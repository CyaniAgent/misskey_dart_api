// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'drive_models.dart';

/// Raw generated endpoints for the `drive` API group.
class RawDriveApi {
  /// Creates a raw `drive` API facade.
  RawDriveApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// drive
  ///
  /// Calls POST /api/drive.
  ///
  /// Authentication required.
  Future<DriveGetResponse> get({CancelToken? cancelToken}) {
    return client.postModel<DriveGetResponse>(
      'drive',
      requiresAuth: true,
      parser: DriveGetResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// drive/files
  ///
  /// Calls POST /api/drive/files.
  ///
  /// Authentication required.
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

  /// drive/files/attached-chat-messages
  ///
  /// Calls POST /api/drive/files/attached-chat-messages.
  ///
  /// Authentication required.
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

  /// drive/files/attached-notes
  ///
  /// Calls POST /api/drive/files/attached-notes.
  ///
  /// Authentication required.
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

  /// drive/files/check-existence
  ///
  /// Calls POST /api/drive/files/check-existence.
  ///
  /// Authentication required.
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

  /// drive/files/create
  ///
  /// Calls POST /api/drive/files/create.
  ///
  /// Authentication required.
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

  /// drive/files/delete
  ///
  /// Calls POST /api/drive/files/delete.
  ///
  /// Authentication required.
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

  /// drive/files/find
  ///
  /// Calls POST /api/drive/files/find.
  ///
  /// Authentication required.
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

  /// drive/files/find-by-hash
  ///
  /// Calls POST /api/drive/files/find-by-hash.
  ///
  /// Authentication required.
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

  /// drive/files/move-bulk
  ///
  /// Calls POST /api/drive/files/move-bulk.
  ///
  /// Authentication required.
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

  /// drive/files/show
  ///
  /// Calls POST /api/drive/files/show.
  ///
  /// Authentication required.
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

  /// drive/files/update
  ///
  /// Calls POST /api/drive/files/update.
  ///
  /// Authentication required.
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

  /// drive/files/upload-from-url
  ///
  /// Calls POST /api/drive/files/upload-from-url.
  ///
  /// Authentication required.
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

  /// drive/folders
  ///
  /// Calls POST /api/drive/folders.
  ///
  /// Authentication required.
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

  /// drive/folders/create
  ///
  /// Calls POST /api/drive/folders/create.
  ///
  /// Authentication required.
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

  /// drive/folders/delete
  ///
  /// Calls POST /api/drive/folders/delete.
  ///
  /// Authentication required.
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

  /// drive/folders/find
  ///
  /// Calls POST /api/drive/folders/find.
  ///
  /// Authentication required.
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

  /// drive/folders/show
  ///
  /// Calls POST /api/drive/folders/show.
  ///
  /// Authentication required.
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

  /// drive/folders/update
  ///
  /// Calls POST /api/drive/folders/update.
  ///
  /// Authentication required.
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

  /// drive/stream
  ///
  /// Calls POST /api/drive/stream.
  ///
  /// Authentication required.
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
