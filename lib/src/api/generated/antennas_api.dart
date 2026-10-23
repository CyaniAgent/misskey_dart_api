// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'antennas_models.dart';

/// Raw generated endpoints for the `antennas` API group.
class RawAntennasApi {
  /// Creates a raw `antennas` API facade.
  RawAntennasApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// antennas/create
  ///
  /// Calls POST /api/antennas/create.
  ///
  /// Authentication required.
  Future<Antenna> create(
    AntennasCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Antenna>(
      'antennas/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// antennas/delete
  ///
  /// Calls POST /api/antennas/delete.
  ///
  /// Authentication required.
  Future<void> delete(
    AntennasDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'antennas/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// antennas/list
  ///
  /// Calls POST /api/antennas/list.
  ///
  /// Authentication required.
  Future<List<Antenna>> list({CancelToken? cancelToken}) {
    return client.postList<Antenna>(
      'antennas/list',
      requiresAuth: true,
      itemParser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// antennas/notes
  ///
  /// Calls POST /api/antennas/notes.
  ///
  /// Authentication required.
  Future<List<Note>> notes(
    AntennasNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'antennas/notes',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// antennas/remove-note
  ///
  /// Calls POST /api/antennas/remove-note.
  ///
  /// Authentication required.
  Future<void> removeNote(
    AntennasRemoveNoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'antennas/remove-note',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// antennas/show
  ///
  /// Calls POST /api/antennas/show.
  ///
  /// Authentication required.
  Future<Antenna> showValue(
    AntennasShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Antenna>(
      'antennas/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// antennas/update
  ///
  /// Calls POST /api/antennas/update.
  ///
  /// Authentication required.
  Future<Antenna> update(
    AntennasUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Antenna>(
      'antennas/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }
}
