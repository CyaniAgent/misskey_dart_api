// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/drive_models.dart';

/// High-level endpoints for the `drive` API group.
class DriveApi {
  /// Creates a high-level `drive` API facade.
  DriveApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// drive
  ///
  /// Calls POST /api/drive.
  ///
  /// Authentication required.
  Future<DriveGetResponse> get({CancelToken? cancelToken}) async {
    return client.raw.drive.get(cancelToken: cancelToken);
  }

  /// drive/files
  ///
  /// Calls POST /api/drive/files.
  ///
  /// Authentication required.
  Future<List<DriveFile>> files({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    String? folderId,
    String? type,
    DriveFilesRequestSort? sort,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.files(
      DriveFilesRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        folderId: folderId,
        type: type,
        sort: sort,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [files].
  Future<CursorPage<DriveFile>> filesPage({
    int limit = 20,
    String? untilId,
    String? folderId,
    String? type,
    DriveFilesRequestSort? sort,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<DriveFile>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => files(
        limit: pageLimit,
        untilId: cursor,
        folderId: folderId,
        type: type,
        sort: sort,
        cancelToken: cancelToken,
      ),
    );
  }

  /// drive/files/attached-chat-messages
  ///
  /// Calls POST /api/drive/files/attached-chat-messages.
  ///
  /// Authentication required.
  Future<List<ChatMessage>> filesAttachedChatMessages({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesAttachedChatMessages(
      DriveFilesAttachedChatMessagesRequest(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        fileId: fileId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [filesAttachedChatMessages].
  Future<CursorPage<ChatMessage>> filesAttachedChatMessagesPage({
    int limit = 20,
    String? untilId,
    required String fileId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatMessage>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => filesAttachedChatMessages(
        limit: pageLimit,
        untilId: cursor,
        fileId: fileId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// drive/files/attached-notes
  ///
  /// Calls POST /api/drive/files/attached-notes.
  ///
  /// Authentication required.
  Future<List<Note>> filesAttachedNotes({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesAttachedNotes(
      DriveFilesAttachedNotesRequest(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        fileId: fileId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [filesAttachedNotes].
  Future<CursorPage<Note>> filesAttachedNotesPage({
    int limit = 20,
    String? untilId,
    required String fileId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => filesAttachedNotes(
        limit: pageLimit,
        untilId: cursor,
        fileId: fileId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// drive/files/check-existence
  ///
  /// Calls POST /api/drive/files/check-existence.
  ///
  /// Authentication required.
  Future<bool> filesCheckExistence({
    required String md5,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesCheckExistence(
      DriveFilesCheckExistenceRequest(md5: md5),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/create
  ///
  /// Calls POST /api/drive/files/create.
  ///
  /// Authentication required.
  Future<DriveFile> filesCreate({
    String? folderId,
    String? name,
    String? comment,
    bool isSensitive = false,
    bool force = false,
    required List<int> file,
    required String fileName,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesCreate(
      DriveFilesCreateRequest(
        folderId: folderId,
        name: name,
        comment: comment,
        isSensitive: isSensitive,
        force: force,
        file: file,
        fileName: fileName,
      ),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/delete
  ///
  /// Calls POST /api/drive/files/delete.
  ///
  /// Authentication required.
  Future<void> filesDelete({
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesDelete(
      DriveFilesDeleteRequest(fileId: fileId),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/find
  ///
  /// Calls POST /api/drive/files/find.
  ///
  /// Authentication required.
  Future<List<DriveFile>> filesFind({
    required String name,
    String? folderId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesFind(
      DriveFilesFindRequest(name: name, folderId: folderId),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/find-by-hash
  ///
  /// Calls POST /api/drive/files/find-by-hash.
  ///
  /// Authentication required.
  Future<List<DriveFile>> filesFindByHash({
    required String md5,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesFindByHash(
      DriveFilesFindByHashRequest(md5: md5),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/move-bulk
  ///
  /// Calls POST /api/drive/files/move-bulk.
  ///
  /// Authentication required.
  Future<void> filesMoveBulk({
    required List<String> fileIds,
    String? folderId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesMoveBulk(
      DriveFilesMoveBulkRequest(fileIds: fileIds, folderId: folderId),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/show
  ///
  /// Calls POST /api/drive/files/show.
  ///
  /// Authentication required.
  Future<DriveFile> filesShowByFileId({
    required String fileId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesShow(
      DriveFilesShowRequestByFileId(fileId: fileId),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/show
  ///
  /// Calls POST /api/drive/files/show.
  ///
  /// Authentication required.
  Future<DriveFile> filesShowByUrl({
    required String url,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesShow(
      DriveFilesShowRequestByUrl(url: url),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/update
  ///
  /// Calls POST /api/drive/files/update.
  ///
  /// Authentication required.
  Future<DriveFile> filesUpdate({
    required String fileId,
    String? folderId,
    String? name,
    bool? isSensitive,
    String? comment,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesUpdate(
      DriveFilesUpdateRequest(
        fileId: fileId,
        folderId: folderId,
        name: name,
        isSensitive: isSensitive,
        comment: comment,
      ),
      cancelToken: cancelToken,
    );
  }

  /// drive/files/upload-from-url
  ///
  /// Calls POST /api/drive/files/upload-from-url.
  ///
  /// Authentication required.
  Future<void> filesUploadFromUrl({
    required String url,
    String? folderId,
    bool isSensitive = false,
    String? comment,
    String? marker,
    bool force = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.filesUploadFromUrl(
      DriveFilesUploadFromUrlRequest(
        url: url,
        folderId: folderId,
        isSensitive: isSensitive,
        comment: comment,
        marker: marker,
        force: force,
      ),
      cancelToken: cancelToken,
    );
  }

  /// drive/folders
  ///
  /// Calls POST /api/drive/folders.
  ///
  /// Authentication required.
  Future<List<DriveFolder>> folders({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    String? folderId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.folders(
      DriveFoldersRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        folderId: folderId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [folders].
  Future<CursorPage<DriveFolder>> foldersPage({
    int limit = 20,
    String? untilId,
    String? folderId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<DriveFolder>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => folders(
        limit: pageLimit,
        untilId: cursor,
        folderId: folderId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// drive/folders/create
  ///
  /// Calls POST /api/drive/folders/create.
  ///
  /// Authentication required.
  Future<DriveFolder> foldersCreate({
    String name = 'Untitled',
    String? parentId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.foldersCreate(
      DriveFoldersCreateRequest(name: name, parentId: parentId),
      cancelToken: cancelToken,
    );
  }

  /// drive/folders/delete
  ///
  /// Calls POST /api/drive/folders/delete.
  ///
  /// Authentication required.
  Future<void> foldersDelete({
    required String folderId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.foldersDelete(
      DriveFoldersDeleteRequest(folderId: folderId),
      cancelToken: cancelToken,
    );
  }

  /// drive/folders/find
  ///
  /// Calls POST /api/drive/folders/find.
  ///
  /// Authentication required.
  Future<List<DriveFolder>> foldersFind({
    required String name,
    String? parentId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.foldersFind(
      DriveFoldersFindRequest(name: name, parentId: parentId),
      cancelToken: cancelToken,
    );
  }

  /// drive/folders/show
  ///
  /// Calls POST /api/drive/folders/show.
  ///
  /// Authentication required.
  Future<DriveFolder> foldersShow({
    required String folderId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.foldersShow(
      DriveFoldersShowRequest(folderId: folderId),
      cancelToken: cancelToken,
    );
  }

  /// drive/folders/update
  ///
  /// Calls POST /api/drive/folders/update.
  ///
  /// Authentication required.
  Future<DriveFolder> foldersUpdate({
    required String folderId,
    String? name,
    String? parentId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.foldersUpdate(
      DriveFoldersUpdateRequest(
        folderId: folderId,
        name: name,
        parentId: parentId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// drive/stream
  ///
  /// Calls POST /api/drive/stream.
  ///
  /// Authentication required.
  Future<List<DriveFile>> stream({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    String? type,
    CancelToken? cancelToken,
  }) async {
    return client.raw.drive.stream(
      DriveStreamRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        type: type,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [stream].
  Future<CursorPage<DriveFile>> streamPage({
    int limit = 20,
    String? untilId,
    String? type,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<DriveFile>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => stream(
        limit: pageLimit,
        untilId: cursor,
        type: type,
        cancelToken: cancelToken,
      ),
    );
  }
}
