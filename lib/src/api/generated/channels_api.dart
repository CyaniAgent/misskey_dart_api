// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'channels_models.dart';

/// Raw generated endpoints for the `channels` API group.
class RawChannelsApi {
  /// Creates a raw `channels` API facade.
  RawChannelsApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// channels/create
  ///
  /// Calls POST /api/channels/create.
  ///
  /// Authentication required.
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

  /// channels/favorite
  ///
  /// Calls POST /api/channels/favorite.
  ///
  /// Authentication required.
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

  /// channels/featured
  ///
  /// Calls POST /api/channels/featured.
  Future<List<Channel>> featured({CancelToken? cancelToken}) {
    return client.postList<Channel>(
      'channels/featured',
      requiresAuth: false,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// channels/follow
  ///
  /// Calls POST /api/channels/follow.
  ///
  /// Authentication required.
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

  /// channels/followed
  ///
  /// Calls POST /api/channels/followed.
  ///
  /// Authentication required.
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

  /// channels/mute/create
  ///
  /// Calls POST /api/channels/mute/create.
  ///
  /// Authentication required.
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

  /// channels/mute/delete
  ///
  /// Calls POST /api/channels/mute/delete.
  ///
  /// Authentication required.
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

  /// channels/mute/list
  ///
  /// Calls POST /api/channels/mute/list.
  ///
  /// Authentication required.
  Future<List<Channel>> muteList({CancelToken? cancelToken}) {
    return client.postList<Channel>(
      'channels/mute/list',
      requiresAuth: true,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// channels/my-favorites
  ///
  /// Calls POST /api/channels/my-favorites.
  ///
  /// Authentication required.
  Future<List<Channel>> myFavorites({CancelToken? cancelToken}) {
    return client.postList<Channel>(
      'channels/my-favorites',
      requiresAuth: true,
      itemParser: Channel.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// channels/owned
  ///
  /// Calls POST /api/channels/owned.
  ///
  /// Authentication required.
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

  /// channels/search
  ///
  /// Calls POST /api/channels/search.
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

  /// channels/show
  ///
  /// Calls POST /api/channels/show.
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

  /// channels/timeline
  ///
  /// Calls POST /api/channels/timeline.
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

  /// channels/unfavorite
  ///
  /// Calls POST /api/channels/unfavorite.
  ///
  /// Authentication required.
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

  /// channels/unfollow
  ///
  /// Calls POST /api/channels/unfollow.
  ///
  /// Authentication required.
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

  /// channels/update
  ///
  /// Calls POST /api/channels/update.
  ///
  /// Authentication required.
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
