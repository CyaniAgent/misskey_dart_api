// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'drive_models.dart';

class RawDriveApi {
  RawDriveApi(this.client);

  final MisskeyClient client;

  Future<DriveGetResponse> get({CancelToken? cancelToken}) {
    return client.postModel<DriveGetResponse>(
      'drive',
      requiresAuth: true,
      parser: DriveGetResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<DriveFile>> files(
    DriveFilesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFile>(
      'drive/files',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<ChatMessage>> filesAttachedChatMessages(
    DriveFilesAttachedChatMessagesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatMessage>(
      'drive/files/attached-chat-messages',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatMessage.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> filesAttachedNotes(
    DriveFilesAttachedNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'drive/files/attached-notes',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<bool> filesCheckExistence(
    DriveFilesCheckExistenceRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postParsed<bool>(
      'drive/files/check-existence',
      body: request.toJson(),
      requiresAuth: true,
      parser: (data) => data as bool,
      cancelToken: cancelToken,
    );
  }

  Future<DriveFile> filesCreate(
    DriveFilesCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    final form = FormData();
    form.files.add(
      MapEntry(
        'file',
        MultipartFile.fromBytes(request.file, filename: request.fileName),
      ),
    );
    if (request.folderId != null)
      form.fields.add(MapEntry('folderId', '${request.folderId}'));
    if (request.name != null)
      form.fields.add(MapEntry('name', '${request.name}'));
    if (request.comment != null)
      form.fields.add(MapEntry('comment', '${request.comment}'));
    if (request.isSensitive != null)
      form.fields.add(MapEntry('isSensitive', '${request.isSensitive}'));
    if (request.force != null)
      form.fields.add(MapEntry('force', '${request.force}'));
    return client.postMultipartModel<DriveFile>(
      'drive/files/create',
      body: form,
      parser: DriveFile.fromJson,
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> filesDelete(
    DriveFilesDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'drive/files/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<DriveFile>> filesFind(
    DriveFilesFindRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFile>(
      'drive/files/find',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<DriveFile>> filesFindByHash(
    DriveFilesFindByHashRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFile>(
      'drive/files/find-by-hash',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> filesMoveBulk(
    DriveFilesMoveBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'drive/files/move-bulk',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<DriveFile> filesShow(
    DriveFilesShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<DriveFile>(
      'drive/files/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<DriveFile> filesUpdate(
    DriveFilesUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<DriveFile>(
      'drive/files/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> filesUploadFromUrl(
    DriveFilesUploadFromUrlRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'drive/files/upload-from-url',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<DriveFolder>> folders(
    DriveFoldersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFolder>(
      'drive/folders',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFolder.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<DriveFolder> foldersCreate(
    DriveFoldersCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<DriveFolder>(
      'drive/folders/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: DriveFolder.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> foldersDelete(
    DriveFoldersDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'drive/folders/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<DriveFolder>> foldersFind(
    DriveFoldersFindRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFolder>(
      'drive/folders/find',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFolder.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<DriveFolder> foldersShow(
    DriveFoldersShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<DriveFolder>(
      'drive/folders/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: DriveFolder.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<DriveFolder> foldersUpdate(
    DriveFoldersUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<DriveFolder>(
      'drive/folders/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: DriveFolder.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<DriveFile>> stream(
    DriveStreamRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<DriveFile>(
      'drive/stream',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: DriveFile.fromJson,
      cancelToken: cancelToken,
    );
  }
}
