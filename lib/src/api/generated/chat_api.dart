// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'chat_models.dart';

class RawChatApi {
  RawChatApi(this.client);

  final MisskeyClient client;

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

  Future<void> readAll({CancelToken? cancelToken}) {
    return client.postVoid(
      'chat/read-all',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

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
