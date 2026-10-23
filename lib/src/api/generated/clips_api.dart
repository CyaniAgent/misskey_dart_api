// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'clips_models.dart';

class RawClipsApi {
  RawClipsApi(this.client);

  final MisskeyClient client;

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

  Future<Clip> create(ClipsCreateRequest request, {CancelToken? cancelToken}) {
    return client.postModel<Clip>(
      'clips/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(ClipsDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'clips/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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

  Future<List<Clip>> myFavorites({CancelToken? cancelToken}) {
    return client.postList<Clip>(
      'clips/my-favorites',
      requiresAuth: true,
      itemParser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

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
