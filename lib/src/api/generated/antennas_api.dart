// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'antennas_models.dart';

class AntennasApi {
  AntennasApi(this.client);

  final MisskeyClient client;

  Future<Antenna> create(
    AntennasCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Antenna>(
      'antennas/create',
      body: request.toJson(),
      parser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(
    AntennasDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'antennas/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Antenna>> list({CancelToken? cancelToken}) {
    return client.postList<Antenna>(
      'antennas/list',
      itemParser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> notes(
    AntennasNotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'antennas/notes',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> removeNote(
    AntennasRemoveNoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'antennas/remove-note',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<Antenna> showValue(
    AntennasShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Antenna>(
      'antennas/show',
      body: request.toJson(),
      parser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<Antenna> update(
    AntennasUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Antenna>(
      'antennas/update',
      body: request.toJson(),
      parser: Antenna.fromJson,
      cancelToken: cancelToken,
    );
  }
}
