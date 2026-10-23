// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'notes_models.g.dart';

enum NotesCreateRequestVisibility { public, home, followers, specified }

enum NotesCreateRequestReactionAcceptance {
  likeOnly,
  likeOnlyForRemote,
  nonSensitiveOnly,
  nonSensitiveOnlyForLocalLikeOnlyForRemote,
}

enum NotesDraftsCreateRequestVisibility { public, home, followers, specified }

enum NotesDraftsCreateRequestReactionAcceptance {
  likeOnly,
  likeOnlyForRemote,
  nonSensitiveOnly,
  nonSensitiveOnlyForLocalLikeOnlyForRemote,
}

enum NotesDraftsUpdateRequestVisibility { public, home, followers, specified }

enum NotesDraftsUpdateRequestReactionAcceptance {
  likeOnly,
  likeOnlyForRemote,
  nonSensitiveOnly,
  nonSensitiveOnlyForLocalLikeOnlyForRemote,
}

sealed class NotesSearchByTagRequest {
  const NotesSearchByTagRequest();

  Map<String, dynamic> toJson();
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesGetRequest {
  const NotesGetRequest({
    this.local = false,
    this.reply,
    this.renote,
    this.withFiles,
    this.poll,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final bool local;
  final bool? reply;
  final bool? renote;
  final bool? withFiles;
  final bool? poll;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory NotesGetRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesGetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesGetRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesChildrenRequest {
  const NotesChildrenRequest({
    required this.noteId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String noteId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory NotesChildrenRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesChildrenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesChildrenRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesClipsRequest {
  const NotesClipsRequest({required this.noteId});
  final String noteId;

  factory NotesClipsRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesClipsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesClipsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesConversationRequest {
  const NotesConversationRequest({
    required this.noteId,
    this.limit = 10,
    this.offset = 0,
  });
  final String noteId;
  final int limit;
  final int offset;

  factory NotesConversationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesConversationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesConversationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesCreateRequestPoll {
  const NotesCreateRequestPoll({
    required this.choices,
    this.multiple,
    this.expiresAt,
    this.expiredAfter,
  });
  final List<String> choices;
  final bool? multiple;
  final int? expiresAt;
  final int? expiredAfter;

  factory NotesCreateRequestPoll.fromJson(Map<String, dynamic> json) =>
      _$NotesCreateRequestPollFromJson(json);

  Map<String, dynamic> toJson() => _$NotesCreateRequestPollToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesCreateRequest {
  const NotesCreateRequest({
    this.visibility = NotesCreateRequestVisibility.public,
    this.visibleUserIds,
    this.cw,
    this.localOnly = false,
    this.reactionAcceptance,
    this.noExtractMentions = false,
    this.noExtractHashtags = false,
    this.noExtractEmojis = false,
    this.replyId,
    this.renoteId,
    this.channelId,
    this.text,
    this.fileIds,
    this.mediaIds,
    this.poll,
  });
  final NotesCreateRequestVisibility visibility;
  final List<String>? visibleUserIds;
  final String? cw;
  final bool localOnly;
  final NotesCreateRequestReactionAcceptance? reactionAcceptance;
  final bool noExtractMentions;
  final bool noExtractHashtags;
  final bool noExtractEmojis;
  final String? replyId;
  final String? renoteId;
  final String? channelId;
  final String? text;
  final List<String>? fileIds;
  final List<String>? mediaIds;
  final NotesCreateRequestPoll? poll;

  factory NotesCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesCreateResponse {
  const NotesCreateResponse({required this.createdNote});
  final Note createdNote;

  factory NotesCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotesCreateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDeleteRequest {
  const NotesDeleteRequest({required this.noteId});
  final String noteId;

  factory NotesDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsCreateRequestPoll {
  const NotesDraftsCreateRequestPoll({
    required this.choices,
    this.multiple,
    this.expiresAt,
    this.expiredAfter,
  });
  final List<String> choices;
  final bool? multiple;
  final int? expiresAt;
  final int? expiredAfter;

  factory NotesDraftsCreateRequestPoll.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsCreateRequestPollFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsCreateRequestPollToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsCreateRequest {
  const NotesDraftsCreateRequest({
    this.visibility = NotesDraftsCreateRequestVisibility.public,
    this.visibleUserIds,
    this.cw,
    this.hashtag,
    this.localOnly = false,
    this.reactionAcceptance,
    this.replyId,
    this.renoteId,
    this.channelId,
    this.text,
    this.fileIds,
    this.poll,
    this.scheduledAt,
    this.isActuallyScheduled = false,
  });
  final NotesDraftsCreateRequestVisibility visibility;
  final List<String>? visibleUserIds;
  final String? cw;
  final String? hashtag;
  final bool localOnly;
  final NotesDraftsCreateRequestReactionAcceptance? reactionAcceptance;
  final String? replyId;
  final String? renoteId;
  final String? channelId;
  final String? text;
  final List<String>? fileIds;
  final NotesDraftsCreateRequestPoll? poll;
  final int? scheduledAt;
  final bool isActuallyScheduled;

  factory NotesDraftsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsCreateResponse {
  const NotesDraftsCreateResponse({required this.createdDraft});
  final NoteDraft createdDraft;

  factory NotesDraftsCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsCreateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsDeleteRequest {
  const NotesDraftsDeleteRequest({required this.draftId});
  final String draftId;

  factory NotesDraftsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsListRequest {
  const NotesDraftsListRequest({
    this.limit = 30,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.scheduled,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool? scheduled;

  factory NotesDraftsListRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsListRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsUpdateRequestPoll {
  const NotesDraftsUpdateRequestPoll({
    required this.choices,
    this.multiple,
    this.expiresAt,
    this.expiredAfter,
  });
  final List<String> choices;
  final bool? multiple;
  final int? expiresAt;
  final int? expiredAfter;

  factory NotesDraftsUpdateRequestPoll.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsUpdateRequestPollFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsUpdateRequestPollToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsUpdateRequest {
  const NotesDraftsUpdateRequest({
    required this.draftId,
    this.visibility,
    this.visibleUserIds,
    this.cw,
    this.hashtag,
    this.localOnly,
    this.reactionAcceptance,
    this.replyId,
    this.renoteId,
    this.channelId,
    this.text,
    this.fileIds,
    this.poll,
    this.scheduledAt,
    this.isActuallyScheduled,
  });
  final String draftId;
  final NotesDraftsUpdateRequestVisibility? visibility;
  final List<String>? visibleUserIds;
  final String? cw;
  final String? hashtag;
  final bool? localOnly;
  final NotesDraftsUpdateRequestReactionAcceptance? reactionAcceptance;
  final String? replyId;
  final String? renoteId;
  final String? channelId;
  final String? text;
  final List<String>? fileIds;
  final NotesDraftsUpdateRequestPoll? poll;
  final int? scheduledAt;
  final bool? isActuallyScheduled;

  factory NotesDraftsUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsUpdateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesDraftsUpdateResponse {
  const NotesDraftsUpdateResponse({required this.updatedDraft});
  final NoteDraft updatedDraft;

  factory NotesDraftsUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesDraftsUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotesDraftsUpdateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesFavoritesCreateRequest {
  const NotesFavoritesCreateRequest({required this.noteId});
  final String noteId;

  factory NotesFavoritesCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesFavoritesCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesFavoritesCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesFavoritesDeleteRequest {
  const NotesFavoritesDeleteRequest({required this.noteId});
  final String noteId;

  factory NotesFavoritesDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesFavoritesDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesFavoritesDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesFeaturedRequest {
  const NotesFeaturedRequest({this.limit = 10, this.untilId, this.channelId});
  final int limit;
  final String? untilId;
  final String? channelId;

  factory NotesFeaturedRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesFeaturedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesFeaturedRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesGlobalTimelineRequest {
  const NotesGlobalTimelineRequest({
    this.withFiles = false,
    this.withRenotes = true,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final bool withFiles;
  final bool withRenotes;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory NotesGlobalTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesGlobalTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesGlobalTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesHybridTimelineRequest {
  const NotesHybridTimelineRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.allowPartial = false,
    this.includeMyRenotes = true,
    this.includeRenotedMyNotes = true,
    this.includeLocalRenotes = true,
    this.withFiles = false,
    this.withRenotes = true,
    this.withReplies = false,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool allowPartial;
  final bool includeMyRenotes;
  final bool includeRenotedMyNotes;
  final bool includeLocalRenotes;
  final bool withFiles;
  final bool withRenotes;
  final bool withReplies;

  factory NotesHybridTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesHybridTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesHybridTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesLocalTimelineRequest {
  const NotesLocalTimelineRequest({
    this.withFiles = false,
    this.withRenotes = true,
    this.withReplies = false,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.allowPartial = false,
    this.sinceDate,
    this.untilDate,
  });
  final bool withFiles;
  final bool withRenotes;
  final bool withReplies;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final bool allowPartial;
  final int? sinceDate;
  final int? untilDate;

  factory NotesLocalTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesLocalTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesLocalTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesMentionsRequest {
  const NotesMentionsRequest({
    this.following = false,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.visibility,
  });
  final bool following;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final String? visibility;

  factory NotesMentionsRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesMentionsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesMentionsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesPollsRecommendationRequest {
  const NotesPollsRecommendationRequest({
    this.limit = 10,
    this.offset = 0,
    this.excludeChannels = false,
  });
  final int limit;
  final int offset;
  final bool excludeChannels;

  factory NotesPollsRecommendationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesPollsRecommendationRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotesPollsRecommendationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesPollsVoteRequest {
  const NotesPollsVoteRequest({required this.noteId, required this.choice});
  final String noteId;
  final int choice;

  factory NotesPollsVoteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesPollsVoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesPollsVoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesReactionsRequest {
  const NotesReactionsRequest({
    required this.noteId,
    this.type,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String noteId;
  final String? type;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory NotesReactionsRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesReactionsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesReactionsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesReactionsCreateRequest {
  const NotesReactionsCreateRequest({
    required this.noteId,
    required this.reaction,
  });
  final String noteId;
  final String reaction;

  factory NotesReactionsCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesReactionsCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesReactionsCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesReactionsDeleteRequest {
  const NotesReactionsDeleteRequest({required this.noteId});
  final String noteId;

  factory NotesReactionsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesReactionsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesReactionsDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesRenotesRequest {
  const NotesRenotesRequest({
    required this.noteId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
  });
  final String noteId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;

  factory NotesRenotesRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesRenotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesRenotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesRepliesRequest {
  const NotesRepliesRequest({
    required this.noteId,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
  });
  final String noteId;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;

  factory NotesRepliesRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesRepliesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesRepliesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesSearchRequest {
  const NotesSearchRequest({
    required this.query,
    this.rangeStartAt,
    this.rangeEndAt,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    this.offset = 0,
    this.host,
    this.userId,
    this.channelId,
  });
  final String query;
  final int? rangeStartAt;
  final int? rangeEndAt;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final int offset;
  final String? host;
  final String? userId;
  final String? channelId;

  factory NotesSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesSearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesSearchRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesSearchByTagRequestByTag extends NotesSearchByTagRequest {
  const NotesSearchByTagRequestByTag({
    this.reply,
    this.renote,
    this.withFiles = false,
    this.poll,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    required this.tag,
  }) : super();
  final bool? reply;
  final bool? renote;
  final bool withFiles;
  final bool? poll;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final String tag;

  factory NotesSearchByTagRequestByTag.fromJson(Map<String, dynamic> json) =>
      _$NotesSearchByTagRequestByTagFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotesSearchByTagRequestByTagToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesSearchByTagRequestByQuery extends NotesSearchByTagRequest {
  const NotesSearchByTagRequestByQuery({
    this.reply,
    this.renote,
    this.withFiles = false,
    this.poll,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.limit = 10,
    required this.query,
  }) : super();
  final bool? reply;
  final bool? renote;
  final bool withFiles;
  final bool? poll;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final int limit;
  final List<List<String>> query;

  factory NotesSearchByTagRequestByQuery.fromJson(Map<String, dynamic> json) =>
      _$NotesSearchByTagRequestByQueryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotesSearchByTagRequestByQueryToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesShowValueRequest {
  const NotesShowValueRequest({required this.noteId});
  final String noteId;

  factory NotesShowValueRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesShowValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesShowValueRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesShowPartialBulkRequest {
  const NotesShowPartialBulkRequest({required this.noteIds});
  final List<String> noteIds;

  factory NotesShowPartialBulkRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesShowPartialBulkRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesShowPartialBulkRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesShowPartialBulkResponseItem {
  const NotesShowPartialBulkResponseItem({
    required this.id,
    required this.reactions,
    required this.reactionEmojis,
  });
  final String id;
  final Map<String, num> reactions;
  final Map<String, String> reactionEmojis;

  factory NotesShowPartialBulkResponseItem.fromJson(
    Map<String, dynamic> json,
  ) => _$NotesShowPartialBulkResponseItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NotesShowPartialBulkResponseItemToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesStateRequest {
  const NotesStateRequest({required this.noteId});
  final String noteId;

  factory NotesStateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesStateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesStateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesStateResponse {
  const NotesStateResponse({
    required this.isFavorited,
    required this.isMutedThread,
  });
  final bool isFavorited;
  final bool isMutedThread;

  factory NotesStateResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesStateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotesStateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesThreadMutingCreateRequest {
  const NotesThreadMutingCreateRequest({required this.noteId});
  final String noteId;

  factory NotesThreadMutingCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesThreadMutingCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesThreadMutingCreateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesThreadMutingDeleteRequest {
  const NotesThreadMutingDeleteRequest({required this.noteId});
  final String noteId;

  factory NotesThreadMutingDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesThreadMutingDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesThreadMutingDeleteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesTimelineRequest {
  const NotesTimelineRequest({
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.allowPartial = false,
    this.includeMyRenotes = true,
    this.includeRenotedMyNotes = true,
    this.includeLocalRenotes = true,
    this.withFiles = false,
    this.withRenotes = true,
  });
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool allowPartial;
  final bool includeMyRenotes;
  final bool includeRenotedMyNotes;
  final bool includeLocalRenotes;
  final bool withFiles;
  final bool withRenotes;

  factory NotesTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesTranslateRequest {
  const NotesTranslateRequest({required this.noteId, required this.targetLang});
  final String noteId;
  final String targetLang;

  factory NotesTranslateRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesTranslateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesTranslateRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesTranslateResponse {
  const NotesTranslateResponse({required this.sourceLang, required this.text});
  final String sourceLang;
  final String text;

  factory NotesTranslateResponse.fromJson(Map<String, dynamic> json) =>
      _$NotesTranslateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotesTranslateResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesUnrenoteRequest {
  const NotesUnrenoteRequest({required this.noteId});
  final String noteId;

  factory NotesUnrenoteRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesUnrenoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesUnrenoteRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesUserListTimelineRequest {
  const NotesUserListTimelineRequest({
    required this.listId,
    this.limit = 10,
    this.sinceId,
    this.untilId,
    this.sinceDate,
    this.untilDate,
    this.allowPartial = false,
    this.includeMyRenotes = true,
    this.includeRenotedMyNotes = true,
    this.includeLocalRenotes = true,
    this.withRenotes = true,
    this.withFiles = false,
  });
  final String listId;
  final int limit;
  final String? sinceId;
  final String? untilId;
  final int? sinceDate;
  final int? untilDate;
  final bool allowPartial;
  final bool includeMyRenotes;
  final bool includeRenotedMyNotes;
  final bool includeLocalRenotes;
  final bool withRenotes;
  final bool withFiles;

  factory NotesUserListTimelineRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesUserListTimelineRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesUserListTimelineRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class NotesPromoReadRequest {
  const NotesPromoReadRequest({required this.noteId});
  final String noteId;

  factory NotesPromoReadRequest.fromJson(Map<String, dynamic> json) =>
      _$NotesPromoReadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NotesPromoReadRequestToJson(this);
}
