// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/channels_models.dart';

class ChannelsApi {
  ChannelsApi(this.client);

  final MisskeyClient client;

  /// channels/create
  ///
  /// Calls POST /api/channels/create.
  ///
  /// Authentication required.
  Future<Channel> create({
    required String name,
    String? description,
    String? bannerId,
    String? color,
    bool? isSensitive,
    bool? allowRenoteToExternal,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.create(
      ChannelsCreateRequest(
        name: name,
        description: description,
        bannerId: bannerId,
        color: color,
        isSensitive: isSensitive,
        allowRenoteToExternal: allowRenoteToExternal,
      ),
      cancelToken: cancelToken,
    );
  }

  /// channels/favorite
  ///
  /// Calls POST /api/channels/favorite.
  ///
  /// Authentication required.
  Future<void> favorite({
    required String channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.favorite(
      ChannelsFavoriteRequest(channelId: channelId),
      cancelToken: cancelToken,
    );
  }

  /// channels/featured
  ///
  /// Calls POST /api/channels/featured.
  Future<List<Channel>> featured({CancelToken? cancelToken}) async {
    return client.raw.channels.featured(cancelToken: cancelToken);
  }

  /// channels/follow
  ///
  /// Calls POST /api/channels/follow.
  ///
  /// Authentication required.
  Future<void> follow({
    required String channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.follow(
      ChannelsFollowRequest(channelId: channelId),
      cancelToken: cancelToken,
    );
  }

  /// channels/followed
  ///
  /// Calls POST /api/channels/followed.
  ///
  /// Authentication required.
  Future<List<Channel>> followed({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 5,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.followed(
      ChannelsFollowedRequest(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [followed].
  Future<CursorPage<Channel>> followedPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Channel>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          followed(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// channels/mute/create
  ///
  /// Calls POST /api/channels/mute/create.
  ///
  /// Authentication required.
  Future<void> muteCreate({
    required String channelId,
    int? expiresAt,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.muteCreate(
      ChannelsMuteCreateRequest(channelId: channelId, expiresAt: expiresAt),
      cancelToken: cancelToken,
    );
  }

  /// channels/mute/delete
  ///
  /// Calls POST /api/channels/mute/delete.
  ///
  /// Authentication required.
  Future<void> muteDelete({
    required String channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.muteDelete(
      ChannelsMuteDeleteRequest(channelId: channelId),
      cancelToken: cancelToken,
    );
  }

  /// channels/mute/list
  ///
  /// Calls POST /api/channels/mute/list.
  ///
  /// Authentication required.
  Future<List<Channel>> muteList({CancelToken? cancelToken}) async {
    return client.raw.channels.muteList(cancelToken: cancelToken);
  }

  /// channels/my-favorites
  ///
  /// Calls POST /api/channels/my-favorites.
  ///
  /// Authentication required.
  Future<List<Channel>> myFavorites({CancelToken? cancelToken}) async {
    return client.raw.channels.myFavorites(cancelToken: cancelToken);
  }

  /// channels/owned
  ///
  /// Calls POST /api/channels/owned.
  ///
  /// Authentication required.
  Future<List<Channel>> owned({
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 5,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.owned(
      ChannelsOwnedRequest(
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [owned].
  Future<CursorPage<Channel>> ownedPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Channel>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) =>
          owned(limit: pageLimit, untilId: cursor, cancelToken: cancelToken),
    );
  }

  /// channels/search
  ///
  /// Calls POST /api/channels/search.
  Future<List<Channel>> search({
    required String query,
    ChannelsSearchRequestType type =
        ChannelsSearchRequestType.nameAndDescription,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 5,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.search(
      ChannelsSearchRequest(
        query: query,
        type: type,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [search].
  Future<CursorPage<Channel>> searchPage({
    int limit = 20,
    String? untilId,
    required String query,
    ChannelsSearchRequestType type =
        ChannelsSearchRequestType.nameAndDescription,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Channel>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => search(
        limit: pageLimit,
        untilId: cursor,
        query: query,
        type: type,
        cancelToken: cancelToken,
      ),
    );
  }

  /// channels/show
  ///
  /// Calls POST /api/channels/show.
  Future<Channel> showValue({
    required String channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.showValue(
      ChannelsShowValueRequest(channelId: channelId),
      cancelToken: cancelToken,
    );
  }

  /// channels/timeline
  ///
  /// Calls POST /api/channels/timeline.
  Future<List<Note>> timeline({
    required String channelId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool allowPartial = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.timeline(
      ChannelsTimelineRequest(
        channelId: channelId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        allowPartial: allowPartial,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [timeline].
  Future<CursorPage<Note>> timelinePage({
    int limit = 20,
    String? untilId,
    required String channelId,
    bool allowPartial = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => timeline(
        limit: pageLimit,
        untilId: cursor,
        channelId: channelId,
        allowPartial: allowPartial,
        cancelToken: cancelToken,
      ),
    );
  }

  /// channels/unfavorite
  ///
  /// Calls POST /api/channels/unfavorite.
  ///
  /// Authentication required.
  Future<void> unfavorite({
    required String channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.unfavorite(
      ChannelsUnfavoriteRequest(channelId: channelId),
      cancelToken: cancelToken,
    );
  }

  /// channels/unfollow
  ///
  /// Calls POST /api/channels/unfollow.
  ///
  /// Authentication required.
  Future<void> unfollow({
    required String channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.unfollow(
      ChannelsUnfollowRequest(channelId: channelId),
      cancelToken: cancelToken,
    );
  }

  /// channels/update
  ///
  /// Calls POST /api/channels/update.
  ///
  /// Authentication required.
  Future<Channel> update({
    required String channelId,
    String? name,
    String? description,
    String? bannerId,
    bool? isArchived,
    List<String>? pinnedNoteIds,
    String? color,
    bool? isSensitive,
    bool? allowRenoteToExternal,
    CancelToken? cancelToken,
  }) async {
    return client.raw.channels.update(
      ChannelsUpdateRequest(
        channelId: channelId,
        name: name,
        description: description,
        bannerId: bannerId,
        isArchived: isArchived,
        pinnedNoteIds: pinnedNoteIds,
        color: color,
        isSensitive: isSensitive,
        allowRenoteToExternal: allowRenoteToExternal,
      ),
      cancelToken: cancelToken,
    );
  }
}
