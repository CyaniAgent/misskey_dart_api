// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/antennas_models.dart';

/// High-level endpoints for the `antennas` API group.
class AntennasApi {
  /// Creates a high-level `antennas` API facade.
  AntennasApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// antennas/create
  ///
  /// Calls POST /api/antennas/create.
  ///
  /// Authentication required.
  Future<Antenna> create({
    required String name,
    required AntennasCreateRequestSrc src,
    String? userListId,
    required List<List<String>> keywords,
    required List<List<String>> excludeKeywords,
    required List<String> users,
    required bool caseSensitive,
    bool? localOnly,
    bool? excludeBots,
    required bool withReplies,
    required bool withFile,
    bool? excludeNotesInSensitiveChannel,
    CancelToken? cancelToken,
  }) async {
    return client.raw.antennas.create(
      AntennasCreateRequest(
        name: name,
        src: src,
        userListId: userListId,
        keywords: keywords,
        excludeKeywords: excludeKeywords,
        users: users,
        caseSensitive: caseSensitive,
        localOnly: localOnly,
        excludeBots: excludeBots,
        withReplies: withReplies,
        withFile: withFile,
        excludeNotesInSensitiveChannel: excludeNotesInSensitiveChannel,
      ),
      cancelToken: cancelToken,
    );
  }

  /// antennas/delete
  ///
  /// Calls POST /api/antennas/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String antennaId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.antennas.delete(
      AntennasDeleteRequest(antennaId: antennaId),
      cancelToken: cancelToken,
    );
  }

  /// antennas/list
  ///
  /// Calls POST /api/antennas/list.
  ///
  /// Authentication required.
  Future<List<Antenna>> list({CancelToken? cancelToken}) async {
    return client.raw.antennas.list(cancelToken: cancelToken);
  }

  /// antennas/notes
  ///
  /// Calls POST /api/antennas/notes.
  ///
  /// Authentication required.
  Future<List<Note>> notes({
    required String antennaId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.antennas.notes(
      AntennasNotesRequest(
        antennaId: antennaId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [notes].
  Future<CursorPage<Note>> notesPage({
    int limit = 20,
    String? untilId,
    required String antennaId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => notes(
        limit: pageLimit,
        untilId: cursor,
        antennaId: antennaId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// antennas/remove-note
  ///
  /// Calls POST /api/antennas/remove-note.
  ///
  /// Authentication required.
  Future<void> removeNote({
    required String antennaId,
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.antennas.removeNote(
      AntennasRemoveNoteRequest(antennaId: antennaId, noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// antennas/show
  ///
  /// Calls POST /api/antennas/show.
  ///
  /// Authentication required.
  Future<Antenna> showValue({
    required String antennaId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.antennas.showValue(
      AntennasShowValueRequest(antennaId: antennaId),
      cancelToken: cancelToken,
    );
  }

  /// antennas/update
  ///
  /// Calls POST /api/antennas/update.
  ///
  /// Authentication required.
  Future<Antenna> update({
    required String antennaId,
    String? name,
    AntennasUpdateRequestSrc? src,
    String? userListId,
    List<List<String>>? keywords,
    List<List<String>>? excludeKeywords,
    List<String>? users,
    bool? caseSensitive,
    bool? localOnly,
    bool? excludeBots,
    bool? withReplies,
    bool? withFile,
    bool? excludeNotesInSensitiveChannel,
    CancelToken? cancelToken,
  }) async {
    return client.raw.antennas.update(
      AntennasUpdateRequest(
        antennaId: antennaId,
        name: name,
        src: src,
        userListId: userListId,
        keywords: keywords,
        excludeKeywords: excludeKeywords,
        users: users,
        caseSensitive: caseSensitive,
        localOnly: localOnly,
        excludeBots: excludeBots,
        withReplies: withReplies,
        withFile: withFile,
        excludeNotesInSensitiveChannel: excludeNotesInSensitiveChannel,
      ),
      cancelToken: cancelToken,
    );
  }
}
