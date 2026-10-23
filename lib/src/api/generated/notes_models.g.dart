// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotesGetRequest _$NotesGetRequestFromJson(Map<String, dynamic> json) =>
    NotesGetRequest(
      local: json['local'] as bool? ?? false,
      reply: json['reply'] as bool?,
      renote: json['renote'] as bool?,
      withFiles: json['withFiles'] as bool?,
      poll: json['poll'] as bool?,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NotesGetRequestToJson(NotesGetRequest instance) =>
    <String, dynamic>{
      'local': instance.local,
      'reply': ?instance.reply,
      'renote': ?instance.renote,
      'withFiles': ?instance.withFiles,
      'poll': ?instance.poll,
      'limit': instance.limit,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
    };

NotesChildrenRequest _$NotesChildrenRequestFromJson(
  Map<String, dynamic> json,
) => NotesChildrenRequest(
  noteId: json['noteId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesChildrenRequestToJson(
  NotesChildrenRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

NotesClipsRequest _$NotesClipsRequestFromJson(Map<String, dynamic> json) =>
    NotesClipsRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesClipsRequestToJson(NotesClipsRequest instance) =>
    <String, dynamic>{'noteId': instance.noteId};

NotesConversationRequest _$NotesConversationRequestFromJson(
  Map<String, dynamic> json,
) => NotesConversationRequest(
  noteId: json['noteId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$NotesConversationRequestToJson(
  NotesConversationRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'limit': instance.limit,
  'offset': instance.offset,
};

NotesCreateRequestPoll _$NotesCreateRequestPollFromJson(
  Map<String, dynamic> json,
) => NotesCreateRequestPoll(
  choices: (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
  multiple: json['multiple'] as bool?,
  expiresAt: (json['expiresAt'] as num?)?.toInt(),
  expiredAfter: (json['expiredAfter'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesCreateRequestPollToJson(
  NotesCreateRequestPoll instance,
) => <String, dynamic>{
  'choices': instance.choices,
  'multiple': ?instance.multiple,
  'expiresAt': ?instance.expiresAt,
  'expiredAfter': ?instance.expiredAfter,
};

NotesCreateRequest _$NotesCreateRequestFromJson(Map<String, dynamic> json) =>
    NotesCreateRequest(
      visibility:
          $enumDecodeNullable(
            _$NotesCreateRequestVisibilityEnumMap,
            json['visibility'],
          ) ??
          NotesCreateRequestVisibility.public,
      visibleUserIds: (json['visibleUserIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cw: json['cw'] as String?,
      localOnly: json['localOnly'] as bool? ?? false,
      reactionAcceptance: $enumDecodeNullable(
        _$NotesCreateRequestReactionAcceptanceEnumMap,
        json['reactionAcceptance'],
      ),
      noExtractMentions: json['noExtractMentions'] as bool? ?? false,
      noExtractHashtags: json['noExtractHashtags'] as bool? ?? false,
      noExtractEmojis: json['noExtractEmojis'] as bool? ?? false,
      replyId: json['replyId'] as String?,
      renoteId: json['renoteId'] as String?,
      channelId: json['channelId'] as String?,
      text: json['text'] as String?,
      fileIds: (json['fileIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mediaIds: (json['mediaIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      poll: json['poll'] == null
          ? null
          : NotesCreateRequestPoll.fromJson(
              json['poll'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NotesCreateRequestToJson(NotesCreateRequest instance) =>
    <String, dynamic>{
      'visibility': _$NotesCreateRequestVisibilityEnumMap[instance.visibility]!,
      'visibleUserIds': ?instance.visibleUserIds,
      'cw': ?instance.cw,
      'localOnly': instance.localOnly,
      'reactionAcceptance':
          ?_$NotesCreateRequestReactionAcceptanceEnumMap[instance
              .reactionAcceptance],
      'noExtractMentions': instance.noExtractMentions,
      'noExtractHashtags': instance.noExtractHashtags,
      'noExtractEmojis': instance.noExtractEmojis,
      'replyId': ?instance.replyId,
      'renoteId': ?instance.renoteId,
      'channelId': ?instance.channelId,
      'text': ?instance.text,
      'fileIds': ?instance.fileIds,
      'mediaIds': ?instance.mediaIds,
      'poll': ?instance.poll?.toJson(),
    };

const _$NotesCreateRequestVisibilityEnumMap = {
  NotesCreateRequestVisibility.public: 'public',
  NotesCreateRequestVisibility.home: 'home',
  NotesCreateRequestVisibility.followers: 'followers',
  NotesCreateRequestVisibility.specified: 'specified',
};

const _$NotesCreateRequestReactionAcceptanceEnumMap = {
  NotesCreateRequestReactionAcceptance.likeOnly: 'likeOnly',
  NotesCreateRequestReactionAcceptance.likeOnlyForRemote: 'likeOnlyForRemote',
  NotesCreateRequestReactionAcceptance.nonSensitiveOnly: 'nonSensitiveOnly',
  NotesCreateRequestReactionAcceptance
          .nonSensitiveOnlyForLocalLikeOnlyForRemote:
      'nonSensitiveOnlyForLocalLikeOnlyForRemote',
};

NotesCreateResponse _$NotesCreateResponseFromJson(Map<String, dynamic> json) =>
    NotesCreateResponse(
      createdNote: Note.fromJson(json['createdNote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotesCreateResponseToJson(
  NotesCreateResponse instance,
) => <String, dynamic>{'createdNote': instance.createdNote.toJson()};

NotesDeleteRequest _$NotesDeleteRequestFromJson(Map<String, dynamic> json) =>
    NotesDeleteRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesDeleteRequestToJson(NotesDeleteRequest instance) =>
    <String, dynamic>{'noteId': instance.noteId};

NotesDraftsCreateRequestPoll _$NotesDraftsCreateRequestPollFromJson(
  Map<String, dynamic> json,
) => NotesDraftsCreateRequestPoll(
  choices: (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
  multiple: json['multiple'] as bool?,
  expiresAt: (json['expiresAt'] as num?)?.toInt(),
  expiredAfter: (json['expiredAfter'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesDraftsCreateRequestPollToJson(
  NotesDraftsCreateRequestPoll instance,
) => <String, dynamic>{
  'choices': instance.choices,
  'multiple': ?instance.multiple,
  'expiresAt': ?instance.expiresAt,
  'expiredAfter': ?instance.expiredAfter,
};

NotesDraftsCreateRequest _$NotesDraftsCreateRequestFromJson(
  Map<String, dynamic> json,
) => NotesDraftsCreateRequest(
  visibility:
      $enumDecodeNullable(
        _$NotesDraftsCreateRequestVisibilityEnumMap,
        json['visibility'],
      ) ??
      NotesDraftsCreateRequestVisibility.public,
  visibleUserIds: (json['visibleUserIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  cw: json['cw'] as String?,
  hashtag: json['hashtag'] as String?,
  localOnly: json['localOnly'] as bool? ?? false,
  reactionAcceptance: $enumDecodeNullable(
    _$NotesDraftsCreateRequestReactionAcceptanceEnumMap,
    json['reactionAcceptance'],
  ),
  replyId: json['replyId'] as String?,
  renoteId: json['renoteId'] as String?,
  channelId: json['channelId'] as String?,
  text: json['text'] as String?,
  fileIds: (json['fileIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  poll: json['poll'] == null
      ? null
      : NotesDraftsCreateRequestPoll.fromJson(
          json['poll'] as Map<String, dynamic>,
        ),
  scheduledAt: (json['scheduledAt'] as num?)?.toInt(),
  isActuallyScheduled: json['isActuallyScheduled'] as bool? ?? false,
);

Map<String, dynamic> _$NotesDraftsCreateRequestToJson(
  NotesDraftsCreateRequest instance,
) => <String, dynamic>{
  'visibility':
      _$NotesDraftsCreateRequestVisibilityEnumMap[instance.visibility]!,
  'visibleUserIds': ?instance.visibleUserIds,
  'cw': ?instance.cw,
  'hashtag': ?instance.hashtag,
  'localOnly': instance.localOnly,
  'reactionAcceptance':
      ?_$NotesDraftsCreateRequestReactionAcceptanceEnumMap[instance
          .reactionAcceptance],
  'replyId': ?instance.replyId,
  'renoteId': ?instance.renoteId,
  'channelId': ?instance.channelId,
  'text': ?instance.text,
  'fileIds': ?instance.fileIds,
  'poll': ?instance.poll?.toJson(),
  'scheduledAt': ?instance.scheduledAt,
  'isActuallyScheduled': instance.isActuallyScheduled,
};

const _$NotesDraftsCreateRequestVisibilityEnumMap = {
  NotesDraftsCreateRequestVisibility.public: 'public',
  NotesDraftsCreateRequestVisibility.home: 'home',
  NotesDraftsCreateRequestVisibility.followers: 'followers',
  NotesDraftsCreateRequestVisibility.specified: 'specified',
};

const _$NotesDraftsCreateRequestReactionAcceptanceEnumMap = {
  NotesDraftsCreateRequestReactionAcceptance.likeOnly: 'likeOnly',
  NotesDraftsCreateRequestReactionAcceptance.likeOnlyForRemote:
      'likeOnlyForRemote',
  NotesDraftsCreateRequestReactionAcceptance.nonSensitiveOnly:
      'nonSensitiveOnly',
  NotesDraftsCreateRequestReactionAcceptance
          .nonSensitiveOnlyForLocalLikeOnlyForRemote:
      'nonSensitiveOnlyForLocalLikeOnlyForRemote',
};

NotesDraftsCreateResponse _$NotesDraftsCreateResponseFromJson(
  Map<String, dynamic> json,
) => NotesDraftsCreateResponse(
  createdDraft: NoteDraft.fromJson(
    json['createdDraft'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$NotesDraftsCreateResponseToJson(
  NotesDraftsCreateResponse instance,
) => <String, dynamic>{'createdDraft': instance.createdDraft.toJson()};

NotesDraftsDeleteRequest _$NotesDraftsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => NotesDraftsDeleteRequest(draftId: json['draftId'] as String);

Map<String, dynamic> _$NotesDraftsDeleteRequestToJson(
  NotesDraftsDeleteRequest instance,
) => <String, dynamic>{'draftId': instance.draftId};

NotesDraftsListRequest _$NotesDraftsListRequestFromJson(
  Map<String, dynamic> json,
) => NotesDraftsListRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 30,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  scheduled: json['scheduled'] as bool?,
);

Map<String, dynamic> _$NotesDraftsListRequestToJson(
  NotesDraftsListRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'scheduled': ?instance.scheduled,
};

NotesDraftsUpdateRequestPoll _$NotesDraftsUpdateRequestPollFromJson(
  Map<String, dynamic> json,
) => NotesDraftsUpdateRequestPoll(
  choices: (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
  multiple: json['multiple'] as bool?,
  expiresAt: (json['expiresAt'] as num?)?.toInt(),
  expiredAfter: (json['expiredAfter'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesDraftsUpdateRequestPollToJson(
  NotesDraftsUpdateRequestPoll instance,
) => <String, dynamic>{
  'choices': instance.choices,
  'multiple': ?instance.multiple,
  'expiresAt': ?instance.expiresAt,
  'expiredAfter': ?instance.expiredAfter,
};

NotesDraftsUpdateRequest _$NotesDraftsUpdateRequestFromJson(
  Map<String, dynamic> json,
) => NotesDraftsUpdateRequest(
  draftId: json['draftId'] as String,
  visibility: $enumDecodeNullable(
    _$NotesDraftsUpdateRequestVisibilityEnumMap,
    json['visibility'],
  ),
  visibleUserIds: (json['visibleUserIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  cw: json['cw'] as String?,
  hashtag: json['hashtag'] as String?,
  localOnly: json['localOnly'] as bool?,
  reactionAcceptance: $enumDecodeNullable(
    _$NotesDraftsUpdateRequestReactionAcceptanceEnumMap,
    json['reactionAcceptance'],
  ),
  replyId: json['replyId'] as String?,
  renoteId: json['renoteId'] as String?,
  channelId: json['channelId'] as String?,
  text: json['text'] as String?,
  fileIds: (json['fileIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  poll: json['poll'] == null
      ? null
      : NotesDraftsUpdateRequestPoll.fromJson(
          json['poll'] as Map<String, dynamic>,
        ),
  scheduledAt: (json['scheduledAt'] as num?)?.toInt(),
  isActuallyScheduled: json['isActuallyScheduled'] as bool?,
);

Map<String, dynamic> _$NotesDraftsUpdateRequestToJson(
  NotesDraftsUpdateRequest instance,
) => <String, dynamic>{
  'draftId': instance.draftId,
  'visibility':
      ?_$NotesDraftsUpdateRequestVisibilityEnumMap[instance.visibility],
  'visibleUserIds': ?instance.visibleUserIds,
  'cw': ?instance.cw,
  'hashtag': ?instance.hashtag,
  'localOnly': ?instance.localOnly,
  'reactionAcceptance':
      ?_$NotesDraftsUpdateRequestReactionAcceptanceEnumMap[instance
          .reactionAcceptance],
  'replyId': ?instance.replyId,
  'renoteId': ?instance.renoteId,
  'channelId': ?instance.channelId,
  'text': ?instance.text,
  'fileIds': ?instance.fileIds,
  'poll': ?instance.poll?.toJson(),
  'scheduledAt': ?instance.scheduledAt,
  'isActuallyScheduled': ?instance.isActuallyScheduled,
};

const _$NotesDraftsUpdateRequestVisibilityEnumMap = {
  NotesDraftsUpdateRequestVisibility.public: 'public',
  NotesDraftsUpdateRequestVisibility.home: 'home',
  NotesDraftsUpdateRequestVisibility.followers: 'followers',
  NotesDraftsUpdateRequestVisibility.specified: 'specified',
};

const _$NotesDraftsUpdateRequestReactionAcceptanceEnumMap = {
  NotesDraftsUpdateRequestReactionAcceptance.likeOnly: 'likeOnly',
  NotesDraftsUpdateRequestReactionAcceptance.likeOnlyForRemote:
      'likeOnlyForRemote',
  NotesDraftsUpdateRequestReactionAcceptance.nonSensitiveOnly:
      'nonSensitiveOnly',
  NotesDraftsUpdateRequestReactionAcceptance
          .nonSensitiveOnlyForLocalLikeOnlyForRemote:
      'nonSensitiveOnlyForLocalLikeOnlyForRemote',
};

NotesDraftsUpdateResponse _$NotesDraftsUpdateResponseFromJson(
  Map<String, dynamic> json,
) => NotesDraftsUpdateResponse(
  updatedDraft: NoteDraft.fromJson(
    json['updatedDraft'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$NotesDraftsUpdateResponseToJson(
  NotesDraftsUpdateResponse instance,
) => <String, dynamic>{'updatedDraft': instance.updatedDraft.toJson()};

NotesFavoritesCreateRequest _$NotesFavoritesCreateRequestFromJson(
  Map<String, dynamic> json,
) => NotesFavoritesCreateRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesFavoritesCreateRequestToJson(
  NotesFavoritesCreateRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesFavoritesDeleteRequest _$NotesFavoritesDeleteRequestFromJson(
  Map<String, dynamic> json,
) => NotesFavoritesDeleteRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesFavoritesDeleteRequestToJson(
  NotesFavoritesDeleteRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesFeaturedRequest _$NotesFeaturedRequestFromJson(
  Map<String, dynamic> json,
) => NotesFeaturedRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  untilId: json['untilId'] as String?,
  channelId: json['channelId'] as String?,
);

Map<String, dynamic> _$NotesFeaturedRequestToJson(
  NotesFeaturedRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'untilId': ?instance.untilId,
  'channelId': ?instance.channelId,
};

NotesGlobalTimelineRequest _$NotesGlobalTimelineRequestFromJson(
  Map<String, dynamic> json,
) => NotesGlobalTimelineRequest(
  withFiles: json['withFiles'] as bool? ?? false,
  withRenotes: json['withRenotes'] as bool? ?? true,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesGlobalTimelineRequestToJson(
  NotesGlobalTimelineRequest instance,
) => <String, dynamic>{
  'withFiles': instance.withFiles,
  'withRenotes': instance.withRenotes,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

NotesHybridTimelineRequest _$NotesHybridTimelineRequestFromJson(
  Map<String, dynamic> json,
) => NotesHybridTimelineRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  allowPartial: json['allowPartial'] as bool? ?? false,
  includeMyRenotes: json['includeMyRenotes'] as bool? ?? true,
  includeRenotedMyNotes: json['includeRenotedMyNotes'] as bool? ?? true,
  includeLocalRenotes: json['includeLocalRenotes'] as bool? ?? true,
  withFiles: json['withFiles'] as bool? ?? false,
  withRenotes: json['withRenotes'] as bool? ?? true,
  withReplies: json['withReplies'] as bool? ?? false,
);

Map<String, dynamic> _$NotesHybridTimelineRequestToJson(
  NotesHybridTimelineRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'allowPartial': instance.allowPartial,
  'includeMyRenotes': instance.includeMyRenotes,
  'includeRenotedMyNotes': instance.includeRenotedMyNotes,
  'includeLocalRenotes': instance.includeLocalRenotes,
  'withFiles': instance.withFiles,
  'withRenotes': instance.withRenotes,
  'withReplies': instance.withReplies,
};

NotesLocalTimelineRequest _$NotesLocalTimelineRequestFromJson(
  Map<String, dynamic> json,
) => NotesLocalTimelineRequest(
  withFiles: json['withFiles'] as bool? ?? false,
  withRenotes: json['withRenotes'] as bool? ?? true,
  withReplies: json['withReplies'] as bool? ?? false,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  allowPartial: json['allowPartial'] as bool? ?? false,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesLocalTimelineRequestToJson(
  NotesLocalTimelineRequest instance,
) => <String, dynamic>{
  'withFiles': instance.withFiles,
  'withRenotes': instance.withRenotes,
  'withReplies': instance.withReplies,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'allowPartial': instance.allowPartial,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

NotesMentionsRequest _$NotesMentionsRequestFromJson(
  Map<String, dynamic> json,
) => NotesMentionsRequest(
  following: json['following'] as bool? ?? false,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  visibility: json['visibility'] as String?,
);

Map<String, dynamic> _$NotesMentionsRequestToJson(
  NotesMentionsRequest instance,
) => <String, dynamic>{
  'following': instance.following,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'visibility': ?instance.visibility,
};

NotesPollsRecommendationRequest _$NotesPollsRecommendationRequestFromJson(
  Map<String, dynamic> json,
) => NotesPollsRecommendationRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  excludeChannels: json['excludeChannels'] as bool? ?? false,
);

Map<String, dynamic> _$NotesPollsRecommendationRequestToJson(
  NotesPollsRecommendationRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'offset': instance.offset,
  'excludeChannels': instance.excludeChannels,
};

NotesPollsVoteRequest _$NotesPollsVoteRequestFromJson(
  Map<String, dynamic> json,
) => NotesPollsVoteRequest(
  noteId: json['noteId'] as String,
  choice: (json['choice'] as num).toInt(),
);

Map<String, dynamic> _$NotesPollsVoteRequestToJson(
  NotesPollsVoteRequest instance,
) => <String, dynamic>{'noteId': instance.noteId, 'choice': instance.choice};

NotesReactionsRequest _$NotesReactionsRequestFromJson(
  Map<String, dynamic> json,
) => NotesReactionsRequest(
  noteId: json['noteId'] as String,
  type: json['type'] as String?,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotesReactionsRequestToJson(
  NotesReactionsRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'type': ?instance.type,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

NotesReactionsCreateRequest _$NotesReactionsCreateRequestFromJson(
  Map<String, dynamic> json,
) => NotesReactionsCreateRequest(
  noteId: json['noteId'] as String,
  reaction: json['reaction'] as String,
);

Map<String, dynamic> _$NotesReactionsCreateRequestToJson(
  NotesReactionsCreateRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'reaction': instance.reaction,
};

NotesReactionsDeleteRequest _$NotesReactionsDeleteRequestFromJson(
  Map<String, dynamic> json,
) => NotesReactionsDeleteRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesReactionsDeleteRequestToJson(
  NotesReactionsDeleteRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesRenotesRequest _$NotesRenotesRequestFromJson(Map<String, dynamic> json) =>
    NotesRenotesRequest(
      noteId: json['noteId'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NotesRenotesRequestToJson(
  NotesRenotesRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
};

NotesRepliesRequest _$NotesRepliesRequestFromJson(Map<String, dynamic> json) =>
    NotesRepliesRequest(
      noteId: json['noteId'] as String,
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 10,
    );

Map<String, dynamic> _$NotesRepliesRequestToJson(
  NotesRepliesRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
};

NotesSearchRequest _$NotesSearchRequestFromJson(Map<String, dynamic> json) =>
    NotesSearchRequest(
      query: json['query'] as String,
      rangeStartAt: (json['rangeStartAt'] as num?)?.toInt(),
      rangeEndAt: (json['rangeEndAt'] as num?)?.toInt(),
      sinceId: json['sinceId'] as String?,
      untilId: json['untilId'] as String?,
      sinceDate: (json['sinceDate'] as num?)?.toInt(),
      untilDate: (json['untilDate'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      host: json['host'] as String?,
      userId: json['userId'] as String?,
      channelId: json['channelId'] as String?,
    );

Map<String, dynamic> _$NotesSearchRequestToJson(NotesSearchRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'rangeStartAt': ?instance.rangeStartAt,
      'rangeEndAt': ?instance.rangeEndAt,
      'sinceId': ?instance.sinceId,
      'untilId': ?instance.untilId,
      'sinceDate': ?instance.sinceDate,
      'untilDate': ?instance.untilDate,
      'limit': instance.limit,
      'offset': instance.offset,
      'host': ?instance.host,
      'userId': ?instance.userId,
      'channelId': ?instance.channelId,
    };

NotesSearchByTagRequestByTag _$NotesSearchByTagRequestByTagFromJson(
  Map<String, dynamic> json,
) => NotesSearchByTagRequestByTag(
  reply: json['reply'] as bool?,
  renote: json['renote'] as bool?,
  withFiles: json['withFiles'] as bool? ?? false,
  poll: json['poll'] as bool?,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  tag: json['tag'] as String,
);

Map<String, dynamic> _$NotesSearchByTagRequestByTagToJson(
  NotesSearchByTagRequestByTag instance,
) => <String, dynamic>{
  'reply': ?instance.reply,
  'renote': ?instance.renote,
  'withFiles': instance.withFiles,
  'poll': ?instance.poll,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'tag': instance.tag,
};

NotesSearchByTagRequestByQuery _$NotesSearchByTagRequestByQueryFromJson(
  Map<String, dynamic> json,
) => NotesSearchByTagRequestByQuery(
  reply: json['reply'] as bool?,
  renote: json['renote'] as bool?,
  withFiles: json['withFiles'] as bool? ?? false,
  poll: json['poll'] as bool?,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  query: (json['query'] as List<dynamic>)
      .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
      .toList(),
);

Map<String, dynamic> _$NotesSearchByTagRequestByQueryToJson(
  NotesSearchByTagRequestByQuery instance,
) => <String, dynamic>{
  'reply': ?instance.reply,
  'renote': ?instance.renote,
  'withFiles': instance.withFiles,
  'poll': ?instance.poll,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'limit': instance.limit,
  'query': instance.query,
};

NotesShowValueRequest _$NotesShowValueRequestFromJson(
  Map<String, dynamic> json,
) => NotesShowValueRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesShowValueRequestToJson(
  NotesShowValueRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesShowPartialBulkRequest _$NotesShowPartialBulkRequestFromJson(
  Map<String, dynamic> json,
) => NotesShowPartialBulkRequest(
  noteIds: (json['noteIds'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$NotesShowPartialBulkRequestToJson(
  NotesShowPartialBulkRequest instance,
) => <String, dynamic>{'noteIds': instance.noteIds};

NotesShowPartialBulkResponseItem _$NotesShowPartialBulkResponseItemFromJson(
  Map<String, dynamic> json,
) => NotesShowPartialBulkResponseItem(
  id: json['id'] as String,
  reactions: Map<String, num>.from(json['reactions'] as Map),
  reactionEmojis: Map<String, String>.from(json['reactionEmojis'] as Map),
);

Map<String, dynamic> _$NotesShowPartialBulkResponseItemToJson(
  NotesShowPartialBulkResponseItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'reactions': instance.reactions,
  'reactionEmojis': instance.reactionEmojis,
};

NotesStateRequest _$NotesStateRequestFromJson(Map<String, dynamic> json) =>
    NotesStateRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesStateRequestToJson(NotesStateRequest instance) =>
    <String, dynamic>{'noteId': instance.noteId};

NotesStateResponse _$NotesStateResponseFromJson(Map<String, dynamic> json) =>
    NotesStateResponse(
      isFavorited: json['isFavorited'] as bool,
      isMutedThread: json['isMutedThread'] as bool,
    );

Map<String, dynamic> _$NotesStateResponseToJson(NotesStateResponse instance) =>
    <String, dynamic>{
      'isFavorited': instance.isFavorited,
      'isMutedThread': instance.isMutedThread,
    };

NotesThreadMutingCreateRequest _$NotesThreadMutingCreateRequestFromJson(
  Map<String, dynamic> json,
) => NotesThreadMutingCreateRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesThreadMutingCreateRequestToJson(
  NotesThreadMutingCreateRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesThreadMutingDeleteRequest _$NotesThreadMutingDeleteRequestFromJson(
  Map<String, dynamic> json,
) => NotesThreadMutingDeleteRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesThreadMutingDeleteRequestToJson(
  NotesThreadMutingDeleteRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesTimelineRequest _$NotesTimelineRequestFromJson(
  Map<String, dynamic> json,
) => NotesTimelineRequest(
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  allowPartial: json['allowPartial'] as bool? ?? false,
  includeMyRenotes: json['includeMyRenotes'] as bool? ?? true,
  includeRenotedMyNotes: json['includeRenotedMyNotes'] as bool? ?? true,
  includeLocalRenotes: json['includeLocalRenotes'] as bool? ?? true,
  withFiles: json['withFiles'] as bool? ?? false,
  withRenotes: json['withRenotes'] as bool? ?? true,
);

Map<String, dynamic> _$NotesTimelineRequestToJson(
  NotesTimelineRequest instance,
) => <String, dynamic>{
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'allowPartial': instance.allowPartial,
  'includeMyRenotes': instance.includeMyRenotes,
  'includeRenotedMyNotes': instance.includeRenotedMyNotes,
  'includeLocalRenotes': instance.includeLocalRenotes,
  'withFiles': instance.withFiles,
  'withRenotes': instance.withRenotes,
};

NotesTranslateRequest _$NotesTranslateRequestFromJson(
  Map<String, dynamic> json,
) => NotesTranslateRequest(
  noteId: json['noteId'] as String,
  targetLang: json['targetLang'] as String,
);

Map<String, dynamic> _$NotesTranslateRequestToJson(
  NotesTranslateRequest instance,
) => <String, dynamic>{
  'noteId': instance.noteId,
  'targetLang': instance.targetLang,
};

NotesTranslateResponse _$NotesTranslateResponseFromJson(
  Map<String, dynamic> json,
) => NotesTranslateResponse(
  sourceLang: json['sourceLang'] as String,
  text: json['text'] as String,
);

Map<String, dynamic> _$NotesTranslateResponseToJson(
  NotesTranslateResponse instance,
) => <String, dynamic>{
  'sourceLang': instance.sourceLang,
  'text': instance.text,
};

NotesUnrenoteRequest _$NotesUnrenoteRequestFromJson(
  Map<String, dynamic> json,
) => NotesUnrenoteRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesUnrenoteRequestToJson(
  NotesUnrenoteRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};

NotesUserListTimelineRequest _$NotesUserListTimelineRequestFromJson(
  Map<String, dynamic> json,
) => NotesUserListTimelineRequest(
  listId: json['listId'] as String,
  limit: (json['limit'] as num?)?.toInt() ?? 10,
  sinceId: json['sinceId'] as String?,
  untilId: json['untilId'] as String?,
  sinceDate: (json['sinceDate'] as num?)?.toInt(),
  untilDate: (json['untilDate'] as num?)?.toInt(),
  allowPartial: json['allowPartial'] as bool? ?? false,
  includeMyRenotes: json['includeMyRenotes'] as bool? ?? true,
  includeRenotedMyNotes: json['includeRenotedMyNotes'] as bool? ?? true,
  includeLocalRenotes: json['includeLocalRenotes'] as bool? ?? true,
  withRenotes: json['withRenotes'] as bool? ?? true,
  withFiles: json['withFiles'] as bool? ?? false,
);

Map<String, dynamic> _$NotesUserListTimelineRequestToJson(
  NotesUserListTimelineRequest instance,
) => <String, dynamic>{
  'listId': instance.listId,
  'limit': instance.limit,
  'sinceId': ?instance.sinceId,
  'untilId': ?instance.untilId,
  'sinceDate': ?instance.sinceDate,
  'untilDate': ?instance.untilDate,
  'allowPartial': instance.allowPartial,
  'includeMyRenotes': instance.includeMyRenotes,
  'includeRenotedMyNotes': instance.includeRenotedMyNotes,
  'includeLocalRenotes': instance.includeLocalRenotes,
  'withRenotes': instance.withRenotes,
  'withFiles': instance.withFiles,
};

NotesPromoReadRequest _$NotesPromoReadRequestFromJson(
  Map<String, dynamic> json,
) => NotesPromoReadRequest(noteId: json['noteId'] as String);

Map<String, dynamic> _$NotesPromoReadRequestToJson(
  NotesPromoReadRequest instance,
) => <String, dynamic>{'noteId': instance.noteId};
