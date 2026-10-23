// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'channels_models.dart';

class RawChannelsApi {
  RawChannelsApi(this.client);

  final MisskeyClient client;

  Future<Channel> create(
    ChannelsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Channel>(
      'channels/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> favorite(
    ChannelsFavoriteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'channels/favorite',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<Channel>> featured({CancelToken? cancelToken}) {
    return client.postList<Channel>(
      'channels/featured',
      requiresAuth: false,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> follow(
    ChannelsFollowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'channels/follow',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<Channel>> followed(
    ChannelsFollowedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Channel>(
      'channels/followed',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> muteCreate(
    ChannelsMuteCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'channels/mute/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> muteDelete(
    ChannelsMuteDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'channels/mute/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<List<Channel>> muteList({CancelToken? cancelToken}) {
    return client.postList<Channel>(
      'channels/mute/list',
      requiresAuth: true,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Channel>> myFavorites({CancelToken? cancelToken}) {
    return client.postList<Channel>(
      'channels/my-favorites',
      requiresAuth: true,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Channel>> owned(
    ChannelsOwnedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Channel>(
      'channels/owned',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Channel>> search(
    ChannelsSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Channel>(
      'channels/search',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<Channel> showValue(
    ChannelsShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Channel>(
      'channels/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> timeline(
    ChannelsTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'channels/timeline',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> unfavorite(
    ChannelsUnfavoriteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'channels/unfavorite',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<void> unfollow(
    ChannelsUnfollowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'channels/unfollow',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  Future<Channel> update(
    ChannelsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Channel>(
      'channels/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }
}
