// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'chat_models.dart';

/// Raw generated endpoints for the `chat` API group.
class RawChatApi {
  /// Creates a raw `chat` API facade.
  RawChatApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// chat/history
  ///
  /// Calls POST /api/chat/history.
  ///
  /// Authentication required.
  Future<List<ChatMessage>> history(
    ChatHistoryRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatMessage>(
      'chat/history',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatMessage.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/create-to-room
  ///
  /// Calls POST /api/chat/messages/create-to-room.
  ///
  /// Authentication required.
  Future<ChatMessageLiteForRoom> messagesCreateToRoom(
    ChatMessagesCreateToRoomRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatMessageLiteForRoom>(
      'chat/messages/create-to-room',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatMessageLiteForRoom.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/create-to-user
  ///
  /// Calls POST /api/chat/messages/create-to-user.
  ///
  /// Authentication required.
  Future<ChatMessageLiteFor1on1> messagesCreateToUser(
    ChatMessagesCreateToUserRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatMessageLiteFor1on1>(
      'chat/messages/create-to-user',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatMessageLiteFor1on1.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/delete
  ///
  /// Calls POST /api/chat/messages/delete.
  ///
  /// Authentication required.
  Future<void> messagesDelete(
    ChatMessagesDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/messages/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/react
  ///
  /// Calls POST /api/chat/messages/react.
  ///
  /// Authentication required.
  Future<void> messagesReact(
    ChatMessagesReactRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/messages/react',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/room-timeline
  ///
  /// Calls POST /api/chat/messages/room-timeline.
  ///
  /// Authentication required.
  Future<List<ChatMessageLiteForRoom>> messagesRoomTimeline(
    ChatMessagesRoomTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatMessageLiteForRoom>(
      'chat/messages/room-timeline',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatMessageLiteForRoom.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/search
  ///
  /// Calls POST /api/chat/messages/search.
  ///
  /// Authentication required.
  Future<List<ChatMessage>> messagesSearch(
    ChatMessagesSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatMessage>(
      'chat/messages/search',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatMessage.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/show
  ///
  /// Calls POST /api/chat/messages/show.
  ///
  /// Authentication required.
  Future<ChatMessage> messagesShow(
    ChatMessagesShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatMessage>(
      'chat/messages/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatMessage.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/unreact
  ///
  /// Calls POST /api/chat/messages/unreact.
  ///
  /// Authentication required.
  Future<void> messagesUnreact(
    ChatMessagesUnreactRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/messages/unreact',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/messages/user-timeline
  ///
  /// Calls POST /api/chat/messages/user-timeline.
  ///
  /// Authentication required.
  Future<List<ChatMessageLiteFor1on1>> messagesUserTimeline(
    ChatMessagesUserTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatMessageLiteFor1on1>(
      'chat/messages/user-timeline',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatMessageLiteFor1on1.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/read-all
  ///
  /// Calls POST /api/chat/read-all.
  ///
  /// Authentication required.
  Future<void> readAll({CancelToken? cancelToken}) {
    return client.postVoid(
      'chat/read-all',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/create
  ///
  /// Calls POST /api/chat/rooms/create.
  ///
  /// Authentication required.
  Future<ChatRoom> roomsCreate(
    ChatRoomsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatRoom>(
      'chat/rooms/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatRoom.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/delete
  ///
  /// Calls POST /api/chat/rooms/delete.
  ///
  /// Authentication required.
  Future<void> roomsDelete(
    ChatRoomsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/rooms/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/create
  ///
  /// Calls POST /api/chat/rooms/invitations/create.
  ///
  /// Authentication required.
  Future<ChatRoomInvitation> roomsInvitationsCreate(
    ChatRoomsInvitationsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatRoomInvitation>(
      'chat/rooms/invitations/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatRoomInvitation.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/ignore
  ///
  /// Calls POST /api/chat/rooms/invitations/ignore.
  ///
  /// Authentication required.
  Future<void> roomsInvitationsIgnore(
    ChatRoomsInvitationsIgnoreRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/rooms/invitations/ignore',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/inbox
  ///
  /// Calls POST /api/chat/rooms/invitations/inbox.
  ///
  /// Authentication required.
  Future<List<ChatRoomInvitation>> roomsInvitationsInbox(
    ChatRoomsInvitationsInboxRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatRoomInvitation>(
      'chat/rooms/invitations/inbox',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatRoomInvitation.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/invitations/outbox
  ///
  /// Calls POST /api/chat/rooms/invitations/outbox.
  ///
  /// Authentication required.
  Future<List<ChatRoomInvitation>> roomsInvitationsOutbox(
    ChatRoomsInvitationsOutboxRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatRoomInvitation>(
      'chat/rooms/invitations/outbox',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatRoomInvitation.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/join
  ///
  /// Calls POST /api/chat/rooms/join.
  ///
  /// Authentication required.
  Future<void> roomsJoin(
    ChatRoomsJoinRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/rooms/join',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/joining
  ///
  /// Calls POST /api/chat/rooms/joining.
  ///
  /// Authentication required.
  Future<List<ChatRoomMembership>> roomsJoining(
    ChatRoomsJoiningRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatRoomMembership>(
      'chat/rooms/joining',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatRoomMembership.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/leave
  ///
  /// Calls POST /api/chat/rooms/leave.
  ///
  /// Authentication required.
  Future<void> roomsLeave(
    ChatRoomsLeaveRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/rooms/leave',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/members
  ///
  /// Calls POST /api/chat/rooms/members.
  ///
  /// Authentication required.
  Future<List<ChatRoomMembership>> roomsMembers(
    ChatRoomsMembersRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatRoomMembership>(
      'chat/rooms/members',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatRoomMembership.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/mute
  ///
  /// Calls POST /api/chat/rooms/mute.
  ///
  /// Authentication required.
  Future<void> roomsMute(
    ChatRoomsMuteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'chat/rooms/mute',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/owned
  ///
  /// Calls POST /api/chat/rooms/owned.
  ///
  /// Authentication required.
  Future<List<ChatRoom>> roomsOwned(
    ChatRoomsOwnedRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<ChatRoom>(
      'chat/rooms/owned',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: ChatRoom.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/show
  ///
  /// Calls POST /api/chat/rooms/show.
  ///
  /// Authentication required.
  Future<ChatRoom> roomsShow(
    ChatRoomsShowRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatRoom>(
      'chat/rooms/show',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatRoom.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// chat/rooms/update
  ///
  /// Calls POST /api/chat/rooms/update.
  ///
  /// Authentication required.
  Future<ChatRoom> roomsUpdate(
    ChatRoomsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<ChatRoom>(
      'chat/rooms/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: ChatRoom.fromJson,
      cancelToken: cancelToken,
    );
  }
}
