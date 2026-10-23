// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/clips_models.dart';

class ClipsApi {
  ClipsApi(this.client);

  final MisskeyClient client;

  /// clips/add-note
  ///
  /// Calls POST /api/clips/add-note.
  ///
  /// Authentication required.
  Future<void> addNote({
    required String clipId,
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.addNote(
      ClipsAddNoteRequest(clipId: clipId, noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// clips/create
  ///
  /// Calls POST /api/clips/create.
  ///
  /// Authentication required.
  Future<Clip> create({
    required String name,
    bool isPublic = false,
    String? description,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.create(
      ClipsCreateRequest(
        name: name,
        isPublic: isPublic,
        description: description,
      ),
      cancelToken: cancelToken,
    );
  }

  /// clips/delete
  ///
  /// Calls POST /api/clips/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String clipId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.delete(
      ClipsDeleteRequest(clipId: clipId),
      cancelToken: cancelToken,
    );
  }

  /// clips/favorite
  ///
  /// Calls POST /api/clips/favorite.
  ///
  /// Authentication required.
  Future<void> favorite({
    required String clipId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.favorite(
      ClipsFavoriteRequest(clipId: clipId),
      cancelToken: cancelToken,
    );
  }

  /// clips/list
  ///
  /// Calls POST /api/clips/list.
  ///
  /// Authentication required.
  Future<List<Clip>> list({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.list(
      ClipsListRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [list].
  Future<CursorPage<Clip>> listPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Clip>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          list(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// clips/my-favorites
  ///
  /// Calls POST /api/clips/my-favorites.
  ///
  /// Authentication required.
  Future<List<Clip>> myFavorites({CancelToken? cancelToken}) async {
    return client.raw.clips.myFavorites(cancelToken: cancelToken);
  }

  /// clips/notes
  ///
  /// Calls POST /api/clips/notes.
  Future<List<Note>> notes({
    required String clipId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    String? search,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.notes(
      ClipsNotesRequest(
        clipId: clipId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        search: search,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [notes].
  Future<CursorPage<Note>> notesPage({
    int limit = 20,
    String? untilId,
    required String clipId,
    String? search,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => notes(
        limit: pageLimit,
        untilId: cursor,
        clipId: clipId,
        search: search,
        cancelToken: cancelToken,
      ),
    );
  }

  /// clips/remove-note
  ///
  /// Calls POST /api/clips/remove-note.
  ///
  /// Authentication required.
  Future<void> removeNote({
    required String clipId,
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.removeNote(
      ClipsRemoveNoteRequest(clipId: clipId, noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// clips/show
  ///
  /// Calls POST /api/clips/show.
  Future<Clip> showValue({
    required String clipId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.showValue(
      ClipsShowValueRequest(clipId: clipId),
      cancelToken: cancelToken,
    );
  }

  /// clips/unfavorite
  ///
  /// Calls POST /api/clips/unfavorite.
  ///
  /// Authentication required.
  Future<void> unfavorite({
    required String clipId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.unfavorite(
      ClipsUnfavoriteRequest(clipId: clipId),
      cancelToken: cancelToken,
    );
  }

  /// clips/update
  ///
  /// Calls POST /api/clips/update.
  ///
  /// Authentication required.
  Future<Clip> update({
    required String clipId,
    String? name,
    bool? isPublic,
    String? description,
    CancelToken? cancelToken,
  }) async {
    return client.raw.clips.update(
      ClipsUpdateRequest(
        clipId: clipId,
        name: name,
        isPublic: isPublic,
        description: description,
      ),
      cancelToken: cancelToken,
    );
  }
}
