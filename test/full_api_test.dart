// SPDX-License-Identifier: BSD-3-Clause

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:misskey_dart_api/raw.dart';
import 'package:test/test.dart';

import 'support/fixtures.dart';
import 'support/generated_fixtures.dart';
import 'support/mock_http_adapter.dart';

class _FakeTransport implements StreamingTransport {
  _FakeTransport(this.uri);

  final Uri uri;
  final StreamController<dynamic> controller = StreamController<dynamic>();
  final List<String> sent = [];

  @override
  Stream<dynamic> get stream => controller.stream;

  @override
  void send(String message) => sent.add(message);

  @override
  Future<void> close() async {
    await controller.close();
  }
}

Map<String, dynamic> _driveFileJson() {
  return {
    'id': 'file-1',
    'createdAt': '2026-01-01T00:00:00.000Z',
    'name': 'a.txt',
    'type': 'text/plain',
    'md5': 'd41d8cd98f00b204e9800998ecf8427e',
    'size': 2,
    'isSensitive': false,
    'blurhash': null,
    'properties': <String, dynamic>{},
    'url': 'https://example.com/a.txt',
    'thumbnailUrl': null,
    'comment': null,
    'folderId': null,
    'folder': null,
    'userId': null,
    'user': null,
  };
}

Map<String, dynamic> _noteJson() {
  return {
    'id': 'note-1',
    'createdAt': '2026-01-01T00:00:00.000Z',
    'text': 'hello',
    'userId': 'user-1',
    'user': meDetailedJson(),
    'visibility': 'public',
    'reactionAcceptance': null,
    'reactionEmojis': <String, dynamic>{},
    'reactions': <String, dynamic>{},
    'reactionCount': 0,
    'renoteCount': 0,
    'repliesCount': 0,
  };
}

MisskeyClient _client(
  MockHttpAdapter adapter, {
  String? accessToken = 'secret',
  MisskeyAuthMode authMode = MisskeyAuthMode.bearer,
}) {
  final dio = Dio()..httpClientAdapter = adapter;
  return MisskeyClient(
    config: MisskeyClientConfig(
      baseUri: Uri.parse('https://example.com'),
      authMode: authMode,
    ),
    tokenProvider: accessToken == null ? null : () => accessToken,
    dio: dio,
  );
}

void main() {
  group('full generated surface', () {
    test('manifest covers every path', () {
      expect(misskeyEndpoints, hasLength(438));
      expect(
        misskeyEndpoints.map((entry) => entry.path).toSet(),
        hasLength(438),
      );
      expect(
        misskeyEndpoints.map((entry) => entry.group).toSet(),
        hasLength(30),
      );
      expect(misskeyComponentSchemas, hasLength(69));
      expect(generatedComponentFixtures, hasLength(69));
      expect(
        misskeyEndpoints
            .where((entry) => entry.handWrittenMethod != null)
            .length,
        2,
      );
      expect(
        misskeyEndpoints.where((entry) => entry.supportsGet),
        hasLength(24),
      );
      expect(
        misskeyEndpoints.where(
          (entry) => entry.supportsPagination && entry.group != 'admin',
        ),
        hasLength(71),
      );
      final methods = <String>{};
      for (final entry in misskeyEndpoints) {
        expect(
          methods.add('${entry.group}/${entry.method}'),
          isTrue,
          reason: 'duplicate ${entry.group}/${entry.method}',
        );
      }
    });

    test('dual operation endpoints support GET and default to POST', () async {
      final adapter = MockHttpAdapter((_) => jsonBody({'count': 3}));
      final client = _client(adapter);
      addTearDown(client.close);

      final viaGet = await client.meta.getOnlineUsersCount(
        httpMethod: MisskeyHttpMethod.get,
      );
      expect(viaGet.count, 3);
      expect(adapter.requests.single.method, 'GET');

      final viaPost = await client.meta.getOnlineUsersCount();
      expect(viaPost.count, 3);
      expect(adapter.requests.last.method, 'POST');
    });

    test('request serialization', () {
      final note = NotesCreateRequest(text: 'hello');
      expect(note.toJson(), containsPair('text', 'hello'));
      expect(note.toJson(), containsPair('visibility', 'public'));

      final following = UsersFollowingRequestByUserId(userId: 'user-1');
      expect(following.toJson(), containsPair('userId', 'user-1'));
      expect(following.toJson().containsKey('username'), isFalse);

      final show = NotesShowValueRequest(noteId: 'note-1');
      expect(show.toJson(), containsPair('noteId', 'note-1'));
    });

    test('multipart request builds a FormData', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(_driveFileJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final file = await client.drive.filesCreate(
        file: [1, 2],
        fileName: 'a.txt',
      );

      expect(file.id, 'file-1');
      final request = adapter.requests.single;
      expect(request.uri.path, '/api/drive/files/create');
      expect(request.headers['Authorization'], 'Bearer secret');
      final form = request.data as FormData;
      expect(form.files.single.key, 'file');
      expect(form.files.single.value.filename, 'a.txt');
    });

    test('parses a oneOf response union', () async {
      final adapter = MockHttpAdapter((_) => jsonBody(meDetailedJson()));
      final client = _client(adapter);
      addTearDown(client.close);

      final result = await client.raw.users.showValue(
        UsersShowValueRequestByUserId(userId: 'user-1'),
      );

      expect(result, isA<UsersShowValueResponseUserDetailed>());
      final detailed = result as UsersShowValueResponseUserDetailed;
      expect(detailed.value, isA<MeDetailed>());
    });

    test('MiAuth builds a URL and parses check', () async {
      final adapter = MockHttpAdapter(
        (_) => jsonBody({
          'token': 'token-1',
          'user': {'id': 'user-1'},
        }),
      );
      final client = _client(adapter);
      addTearDown(client.close);

      final session = client.miAuth.createSessionId(Random(1));
      expect(
        session,
        matches(
          RegExp(
            r'^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$',
          ),
        ),
      );
      final uri = client.miAuth.buildAuthorizationUri(
        sessionId: session,
        name: 'Nyachi',
        permissions: ['read:notes', 'write:notes'],
      );
      expect(uri.path, '/miauth/$session');
      expect(uri.queryParameters['name'], 'Nyachi');
      expect(uri.queryParameters['permission'], 'read:notes,write:notes');

      final result = await client.miAuth.check('session-1');
      expect(result.token, 'token-1');
      expect(result.user['id'], 'user-1');
      expect(adapter.requests.single.uri.path, '/api/miauth/session-1/check');
    });

    test('streaming subscribes and routes', () async {
      late _FakeTransport transport;
      final streaming = MisskeyStreamingClient(
        baseUri: Uri.parse('https://example.com'),
        tokenProvider: () => 'secret',
        connector: (uri) {
          transport = _FakeTransport(uri);
          return transport;
        },
      );
      addTearDown(streaming.close);

      final connected = Completer<MisskeyConnected>();
      final noteEvent = Completer<Note>();
      final timelineSub = await streaming.subscribe(
        const TimelineChannel(TimelineKind.home),
      );
      final noteSub = timelineSub.listen((event) {
        if (!connected.isCompleted) {
          connected.complete(
            MisskeyConnected(subscriptionId: event.subscriptionId),
          );
        }
        if (event.type == 'note' && !noteEvent.isCompleted) {
          noteEvent.complete(event.body);
        }
      });
      addTearDown(noteSub.cancel);

      final connectFrame =
          jsonDecode(transport.sent.single) as Map<String, dynamic>;
      final id = (connectFrame['body'] as Map<String, dynamic>)['id'] as String;
      transport.controller.add(
        jsonEncode({
          'type': 'connected',
          'body': {'id': id},
        }),
      );
      transport.controller.add(
        jsonEncode({
          'type': 'channel',
          'body': {'id': id, 'type': 'note', 'body': _noteJson()},
        }),
      );

      await connected.future.timeout(const Duration(seconds: 2));
      expect(
        (await noteEvent.future.timeout(const Duration(seconds: 2))).id,
        'note-1',
      );
      expect(
        transport.uri.toString(),
        startsWith('wss://example.com/streaming'),
      );

      final noteUpdates = <MisskeyNoteUpdated>[];
      final eventSub = streaming.events.listen((event) {
        if (event is MisskeyNoteUpdated) noteUpdates.add(event);
      });
      addTearDown(eventSub.cancel);
      await streaming.subscribeNote('note-1');
      transport.controller.add(
        jsonEncode({
          'type': 'noteUpdated',
          'body': {
            'id': 'note-1',
            'type': 'reacted',
            'body': {'reaction': 'like', 'userId': 'user-1'},
          },
        }),
      );
      await Future<void>.delayed(Duration.zero);
      expect(noteUpdates.single.type, 'reacted');

      await noteSub.cancel();
      expect(
        transport.sent.any(
          (message) => message.contains('"type":"disconnect"'),
        ),
        isTrue,
      );
    });
  });
}
