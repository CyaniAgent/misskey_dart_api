// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../pagination/cursor_page.dart';
import '../generated/chat_models.dart';

/// High-level endpoints for the `chat` API group.
class ChatApi {
  /// Creates a high-level `chat` API facade.
  ChatApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// chat/history
  ///
  /// Calls POST /api/chat/history.
  ///
  /// Authentication required.
  Future<List<ChatMessage>> history({
    int limit = 10,
    bool room = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.history(
      ChatHistoryRequest(limit: limit, room: room),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/create-to-room
  ///
  /// Calls POST /api/chat/messages/create-to-room.
  ///
  /// Authentication required.
  Future<ChatMessageLiteForRoom> messagesCreateToRoom({
    String? text,
    String? fileId,
    required String toRoomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesCreateToRoom(
      ChatMessagesCreateToRoomRequest(
        text: text,
        fileId: fileId,
        toRoomId: toRoomId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/create-to-user
  ///
  /// Calls POST /api/chat/messages/create-to-user.
  ///
  /// Authentication required.
  Future<ChatMessageLiteFor1on1> messagesCreateToUser({
    String? text,
    String? fileId,
    required String toUserId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesCreateToUser(
      ChatMessagesCreateToUserRequest(
        text: text,
        fileId: fileId,
        toUserId: toUserId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/delete
  ///
  /// Calls POST /api/chat/messages/delete.
  ///
  /// Authentication required.
  Future<void> messagesDelete({
    required String messageId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesDelete(
      ChatMessagesDeleteRequest(messageId: messageId),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/react
  ///
  /// Calls POST /api/chat/messages/react.
  ///
  /// Authentication required.
  Future<void> messagesReact({
    required String messageId,
    required String reaction,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesReact(
      ChatMessagesReactRequest(messageId: messageId, reaction: reaction),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/room-timeline
  ///
  /// Calls POST /api/chat/messages/room-timeline.
  ///
  /// Authentication required.
  Future<List<ChatMessageLiteForRoom>> messagesRoomTimeline({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    required String roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesRoomTimeline(
      ChatMessagesRoomTimelineRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        roomId: roomId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [messagesRoomTimeline].
  Future<CursorPage<ChatMessageLiteForRoom>> messagesRoomTimelinePage({
    int limit = 20,
    String? untilId,
    required String roomId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatMessageLiteForRoom>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => messagesRoomTimeline(
        limit: pageLimit,
        untilId: cursor,
        roomId: roomId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/messages/search
  ///
  /// Calls POST /api/chat/messages/search.
  ///
  /// Authentication required.
  Future<List<ChatMessage>> messagesSearch({
    required String query,
    int limit = 10,
    String? userId,
    String? roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesSearch(
      ChatMessagesSearchRequest(
        query: query,
        limit: limit,
        userId: userId,
        roomId: roomId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/show
  ///
  /// Calls POST /api/chat/messages/show.
  ///
  /// Authentication required.
  Future<ChatMessage> messagesShow({
    required String messageId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesShow(
      ChatMessagesShowRequest(messageId: messageId),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/unreact
  ///
  /// Calls POST /api/chat/messages/unreact.
  ///
  /// Authentication required.
  Future<void> messagesUnreact({
    required String messageId,
    required String reaction,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesUnreact(
      ChatMessagesUnreactRequest(messageId: messageId, reaction: reaction),
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/user-timeline
  ///
  /// Calls POST /api/chat/messages/user-timeline.
  ///
  /// Authentication required.
  Future<List<ChatMessageLiteFor1on1>> messagesUserTimeline({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.messagesUserTimeline(
      ChatMessagesUserTimelineRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        userId: userId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [messagesUserTimeline].
  Future<CursorPage<ChatMessageLiteFor1on1>> messagesUserTimelinePage({
    int limit = 20,
    String? untilId,
    required String userId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatMessageLiteFor1on1>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => messagesUserTimeline(
        limit: pageLimit,
        untilId: cursor,
        userId: userId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/read-all
  ///
  /// Calls POST /api/chat/read-all.
  ///
  /// Authentication required.
  Future<void> readAll({CancelToken? cancelToken}) async {
    return client.raw.chat.readAll(cancelToken: cancelToken);
  }

  /// chat/rooms/create
  ///
  /// Calls POST /api/chat/rooms/create.
  ///
  /// Authentication required.
  Future<ChatRoom> roomsCreate({
    required String name,
    String? description,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsCreate(
      ChatRoomsCreateRequest(name: name, description: description),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/delete
  ///
  /// Calls POST /api/chat/rooms/delete.
  ///
  /// Authentication required.
  Future<void> roomsDelete({
    required String roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsDelete(
      ChatRoomsDeleteRequest(roomId: roomId),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/create
  ///
  /// Calls POST /api/chat/rooms/invitations/create.
  ///
  /// Authentication required.
  Future<ChatRoomInvitation> roomsInvitationsCreate({
    required String roomId,
    required String userId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsInvitationsCreate(
      ChatRoomsInvitationsCreateRequest(roomId: roomId, userId: userId),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/ignore
  ///
  /// Calls POST /api/chat/rooms/invitations/ignore.
  ///
  /// Authentication required.
  Future<void> roomsInvitationsIgnore({
    required String roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsInvitationsIgnore(
      ChatRoomsInvitationsIgnoreRequest(roomId: roomId),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/inbox
  ///
  /// Calls POST /api/chat/rooms/invitations/inbox.
  ///
  /// Authentication required.
  Future<List<ChatRoomInvitation>> roomsInvitationsInbox({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsInvitationsInbox(
      ChatRoomsInvitationsInboxRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [roomsInvitationsInbox].
  Future<CursorPage<ChatRoomInvitation>> roomsInvitationsInboxPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatRoomInvitation>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => roomsInvitationsInbox(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/rooms/invitations/outbox
  ///
  /// Calls POST /api/chat/rooms/invitations/outbox.
  ///
  /// Authentication required.
  Future<List<ChatRoomInvitation>> roomsInvitationsOutbox({
    required String roomId,
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsInvitationsOutbox(
      ChatRoomsInvitationsOutboxRequest(
        roomId: roomId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [roomsInvitationsOutbox].
  Future<CursorPage<ChatRoomInvitation>> roomsInvitationsOutboxPage({
    int limit = 20,
    String? untilId,
    required String roomId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatRoomInvitation>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => roomsInvitationsOutbox(
        limit: pageLimit,
        untilId: cursor,
        roomId: roomId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/rooms/join
  ///
  /// Calls POST /api/chat/rooms/join.
  ///
  /// Authentication required.
  Future<void> roomsJoin({
    required String roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsJoin(
      ChatRoomsJoinRequest(roomId: roomId),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/joining
  ///
  /// Calls POST /api/chat/rooms/joining.
  ///
  /// Authentication required.
  Future<List<ChatRoomMembership>> roomsJoining({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsJoining(
      ChatRoomsJoiningRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [roomsJoining].
  Future<CursorPage<ChatRoomMembership>> roomsJoiningPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatRoomMembership>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => roomsJoining(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/rooms/leave
  ///
  /// Calls POST /api/chat/rooms/leave.
  ///
  /// Authentication required.
  Future<void> roomsLeave({
    required String roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsLeave(
      ChatRoomsLeaveRequest(roomId: roomId),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/members
  ///
  /// Calls POST /api/chat/rooms/members.
  ///
  /// Authentication required.
  Future<List<ChatRoomMembership>> roomsMembers({
    required String roomId,
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsMembers(
      ChatRoomsMembersRequest(
        roomId: roomId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [roomsMembers].
  Future<CursorPage<ChatRoomMembership>> roomsMembersPage({
    int limit = 20,
    String? untilId,
    required String roomId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatRoomMembership>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => roomsMembers(
        limit: pageLimit,
        untilId: cursor,
        roomId: roomId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/rooms/mute
  ///
  /// Calls POST /api/chat/rooms/mute.
  ///
  /// Authentication required.
  Future<void> roomsMute({
    required String roomId,
    required bool mute,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsMute(
      ChatRoomsMuteRequest(roomId: roomId, mute: mute),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/owned
  ///
  /// Calls POST /api/chat/rooms/owned.
  ///
  /// Authentication required.
  Future<List<ChatRoom>> roomsOwned({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsOwned(
      ChatRoomsOwnedRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [roomsOwned].
  Future<CursorPage<ChatRoom>> roomsOwnedPage({
    int limit = 20,
    String? untilId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<ChatRoom>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => roomsOwned(
        limit: pageLimit,
        untilId: cursor,
        cancelToken: cancelToken,
      ),
    );
  }

  /// chat/rooms/show
  ///
  /// Calls POST /api/chat/rooms/show.
  ///
  /// Authentication required.
  Future<ChatRoom> roomsShow({
    required String roomId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsShow(
      ChatRoomsShowRequest(roomId: roomId),
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/update
  ///
  /// Calls POST /api/chat/rooms/update.
  ///
  /// Authentication required.
  Future<ChatRoom> roomsUpdate({
    required String roomId,
    String? name,
    String? description,
    CancelToken? cancelToken,
  }) async {
    return client.raw.chat.roomsUpdate(
      ChatRoomsUpdateRequest(
        roomId: roomId,
        name: name,
        description: description,
      ),
      cancelToken: cancelToken,
    );
  }
}
