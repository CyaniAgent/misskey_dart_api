// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'clips_models.dart';

/// Raw generated endpoints for the `clips` API group.
class RawClipsApi {
  /// Creates a raw `clips` API facade.
  RawClipsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// clips/add-note
  ///
  /// Calls POST /api/clips/add-note.
  ///
  /// Authentication required.
  Future<void> addNote(
    ClipsAddNoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'clips/add-note',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// clips/create
  ///
  /// Calls POST /api/clips/create.
  ///
  /// Authentication required.
  Future<Clip> create(ClipsCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Clip>(
      'clips/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// clips/delete
  ///
  /// Calls POST /api/clips/delete.
  ///
  /// Authentication required.
  Future<void> delete(ClipsDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'clips/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// clips/favorite
  ///
  /// Calls POST /api/clips/favorite.
  ///
  /// Authentication required.
  Future<void> favorite(
    ClipsFavoriteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'clips/favorite',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// clips/list
  ///
  /// Calls POST /api/clips/list.
  ///
  /// Authentication required.
  Future<List<Clip>> list(
    ClipsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Clip>(
      'clips/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// clips/my-favorites
  ///
  /// Calls POST /api/clips/my-favorites.
  ///
  /// Authentication required.
  Future<List<Clip>> myFavorites({CancelToken? cancelToken}) {
    return client.postList<Clip>(
      'clips/my-favorites',
      requiresAuth: true,
      itemParser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// clips/notes
  ///
  /// Calls POST /api/clips/notes.
  Future<List<Note>> notes(
    ClipsNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'clips/notes',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// clips/remove-note
  ///
  /// Calls POST /api/clips/remove-note.
  ///
  /// Authentication required.
  Future<void> removeNote(
    ClipsRemoveNoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'clips/remove-note',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// clips/show
  ///
  /// Calls POST /api/clips/show.
  Future<Clip> showValue(
    ClipsShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Clip>(
      'clips/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// clips/unfavorite
  ///
  /// Calls POST /api/clips/unfavorite.
  ///
  /// Authentication required.
  Future<void> unfavorite(
    ClipsUnfavoriteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'clips/unfavorite',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// clips/update
  ///
  /// Calls POST /api/clips/update.
  ///
  /// Authentication required.
  Future<Clip> update(ClipsUpdateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Clip>(
      'clips/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }
}
