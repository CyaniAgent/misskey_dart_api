// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import '../../pagination/cursor_page.dart';
import '../generated/notes_models.dart';

/// High-level endpoints for the `notes` API group.
class NotesApi {
  /// Creates a high-level `notes` API facade.
  NotesApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// notes
  ///
  /// Calls POST /api/notes.
  Future<List<Note>> get({
    bool local = false,
    bool? reply,
    bool? renote,
    bool? withFiles,
    bool? poll,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.get(
      NotesGetRequest(
        local: local,
        reply: reply,
        renote: renote,
        withFiles: withFiles,
        poll: poll,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [get].
  Future<CursorPage<Note>> getPage({
    int limit = 20,
    String? untilId,
    bool local = false,
    bool? reply,
    bool? renote,
    bool? withFiles,
    bool? poll,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => get(
        limit: pageLimit,
        untilId: cursor,
        local: local,
        reply: reply,
        renote: renote,
        withFiles: withFiles,
        poll: poll,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/children
  ///
  /// Calls POST /api/notes/children.
  Future<List<Note>> children({
    required String noteId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.children(
      NotesChildrenRequest(
        noteId: noteId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [children].
  Future<CursorPage<Note>> childrenPage({
    int limit = 20,
    String? untilId,
    required String noteId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => children(
        limit: pageLimit,
        untilId: cursor,
        noteId: noteId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/clips
  ///
  /// Calls POST /api/notes/clips.
  Future<List<Clip>> clips({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.clips(
      NotesClipsRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/conversation
  ///
  /// Calls POST /api/notes/conversation.
  Future<List<Note>> conversation({
    required String noteId,
    int limit = 10,
    int offset = 0,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.conversation(
      NotesConversationRequest(noteId: noteId, limit: limit, offset: offset),
      cancelToken: cancelToken,
    );
  }

  /// notes/create
  ///
  /// Calls POST /api/notes/create.
  ///
  /// Authentication required.
  Future<Note> create({
    NotesCreateRequestVisibility visibility =
        NotesCreateRequestVisibility.public,
    List<String>? visibleUserIds,
    String? cw,
    bool localOnly = false,
    NotesCreateRequestReactionAcceptance? reactionAcceptance,
    bool noExtractMentions = false,
    bool noExtractHashtags = false,
    bool noExtractEmojis = false,
    String? replyId,
    String? renoteId,
    String? channelId,
    String? text,
    List<String>? fileIds,
    List<String>? mediaIds,
    NotesCreateRequestPoll? poll,
    CancelToken? cancelToken,
  }) async {
    final response = await client.raw.notes.create(
      NotesCreateRequest(
        visibility: visibility,
        visibleUserIds: visibleUserIds,
        cw: cw,
        localOnly: localOnly,
        reactionAcceptance: reactionAcceptance,
        noExtractMentions: noExtractMentions,
        noExtractHashtags: noExtractHashtags,
        noExtractEmojis: noExtractEmojis,
        replyId: replyId,
        renoteId: renoteId,
        channelId: channelId,
        text: text,
        fileIds: fileIds,
        mediaIds: mediaIds,
        poll: poll,
      ),
      cancelToken: cancelToken,
    );
    return response.createdNote;
  }

  /// notes/delete
  ///
  /// Calls POST /api/notes/delete.
  ///
  /// Authentication required.
  Future<void> delete({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.delete(
      NotesDeleteRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/count
  ///
  /// Calls POST /api/notes/drafts/count.
  ///
  /// Authentication required.
  Future<JsonMap> draftsCount({CancelToken? cancelToken}) async {
    return client.raw.notes.draftsCount(cancelToken: cancelToken);
  }

  /// notes/drafts/create
  ///
  /// Calls POST /api/notes/drafts/create.
  ///
  /// Authentication required.
  Future<NotesDraftsCreateResponse> draftsCreate({
    NotesDraftsCreateRequestVisibility visibility =
        NotesDraftsCreateRequestVisibility.public,
    List<String>? visibleUserIds,
    String? cw,
    String? hashtag,
    bool localOnly = false,
    NotesDraftsCreateRequestReactionAcceptance? reactionAcceptance,
    String? replyId,
    String? renoteId,
    String? channelId,
    String? text,
    List<String>? fileIds,
    NotesDraftsCreateRequestPoll? poll,
    int? scheduledAt,
    bool isActuallyScheduled = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.draftsCreate(
      NotesDraftsCreateRequest(
        visibility: visibility,
        visibleUserIds: visibleUserIds,
        cw: cw,
        hashtag: hashtag,
        localOnly: localOnly,
        reactionAcceptance: reactionAcceptance,
        replyId: replyId,
        renoteId: renoteId,
        channelId: channelId,
        text: text,
        fileIds: fileIds,
        poll: poll,
        scheduledAt: scheduledAt,
        isActuallyScheduled: isActuallyScheduled,
      ),
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/delete
  ///
  /// Calls POST /api/notes/drafts/delete.
  ///
  /// Authentication required.
  Future<void> draftsDelete({
    required String draftId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.draftsDelete(
      NotesDraftsDeleteRequest(draftId: draftId),
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/list
  ///
  /// Calls POST /api/notes/drafts/list.
  ///
  /// Authentication required.
  Future<List<NoteDraft>> draftsList({
    int limit = 30,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool? scheduled,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.draftsList(
      NotesDraftsListRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        scheduled: scheduled,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [draftsList].
  Future<CursorPage<NoteDraft>> draftsListPage({
    int limit = 20,
    String? untilId,
    bool? scheduled,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<NoteDraft>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => draftsList(
        limit: pageLimit,
        untilId: cursor,
        scheduled: scheduled,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/drafts/update
  ///
  /// Calls POST /api/notes/drafts/update.
  ///
  /// Authentication required.
  Future<NotesDraftsUpdateResponse> draftsUpdate({
    required String draftId,
    NotesDraftsUpdateRequestVisibility? visibility,
    List<String>? visibleUserIds,
    String? cw,
    String? hashtag,
    bool? localOnly,
    NotesDraftsUpdateRequestReactionAcceptance? reactionAcceptance,
    String? replyId,
    String? renoteId,
    String? channelId,
    String? text,
    List<String>? fileIds,
    NotesDraftsUpdateRequestPoll? poll,
    int? scheduledAt,
    bool? isActuallyScheduled,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.draftsUpdate(
      NotesDraftsUpdateRequest(
        draftId: draftId,
        visibility: visibility,
        visibleUserIds: visibleUserIds,
        cw: cw,
        hashtag: hashtag,
        localOnly: localOnly,
        reactionAcceptance: reactionAcceptance,
        replyId: replyId,
        renoteId: renoteId,
        channelId: channelId,
        text: text,
        fileIds: fileIds,
        poll: poll,
        scheduledAt: scheduledAt,
        isActuallyScheduled: isActuallyScheduled,
      ),
      cancelToken: cancelToken,
    );
  }

  /// notes/favorites/create
  ///
  /// Calls POST /api/notes/favorites/create.
  ///
  /// Authentication required.
  Future<void> favoritesCreate({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.favoritesCreate(
      NotesFavoritesCreateRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/favorites/delete
  ///
  /// Calls POST /api/notes/favorites/delete.
  ///
  /// Authentication required.
  Future<void> favoritesDelete({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.favoritesDelete(
      NotesFavoritesDeleteRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/featured
  ///
  /// Calls POST /api/notes/featured.
  Future<List<Note>> featured({
    int limit = 10,
    String? untilId,
    String? channelId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.featured(
      NotesFeaturedRequest(
        limit: limit,
        untilId: untilId,
        channelId: channelId,
      ),
      httpMethod: httpMethod,
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [featured].
  Future<CursorPage<Note>> featuredPage({
    int limit = 20,
    String? untilId,
    String? channelId,
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => featured(
        limit: pageLimit,
        untilId: cursor,
        channelId: channelId,
        httpMethod: httpMethod,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/global-timeline
  ///
  /// Calls POST /api/notes/global-timeline.
  Future<List<Note>> globalTimeline({
    bool withFiles = false,
    bool withRenotes = true,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.globalTimeline(
      NotesGlobalTimelineRequest(
        withFiles: withFiles,
        withRenotes: withRenotes,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [globalTimeline].
  Future<CursorPage<Note>> globalTimelinePage({
    int limit = 20,
    String? untilId,
    bool withFiles = false,
    bool withRenotes = true,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => globalTimeline(
        limit: pageLimit,
        untilId: cursor,
        withFiles: withFiles,
        withRenotes: withRenotes,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/hybrid-timeline
  ///
  /// Calls POST /api/notes/hybrid-timeline.
  ///
  /// Authentication required.
  Future<List<Note>> hybridTimeline({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool allowPartial = false,
    bool includeMyRenotes = true,
    bool includeRenotedMyNotes = true,
    bool includeLocalRenotes = true,
    bool withFiles = false,
    bool withRenotes = true,
    bool withReplies = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.hybridTimeline(
      NotesHybridTimelineRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        allowPartial: allowPartial,
        includeMyRenotes: includeMyRenotes,
        includeRenotedMyNotes: includeRenotedMyNotes,
        includeLocalRenotes: includeLocalRenotes,
        withFiles: withFiles,
        withRenotes: withRenotes,
        withReplies: withReplies,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [hybridTimeline].
  Future<CursorPage<Note>> hybridTimelinePage({
    int limit = 20,
    String? untilId,
    bool allowPartial = false,
    bool includeMyRenotes = true,
    bool includeRenotedMyNotes = true,
    bool includeLocalRenotes = true,
    bool withFiles = false,
    bool withRenotes = true,
    bool withReplies = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => hybridTimeline(
        limit: pageLimit,
        untilId: cursor,
        allowPartial: allowPartial,
        includeMyRenotes: includeMyRenotes,
        includeRenotedMyNotes: includeRenotedMyNotes,
        includeLocalRenotes: includeLocalRenotes,
        withFiles: withFiles,
        withRenotes: withRenotes,
        withReplies: withReplies,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/local-timeline
  ///
  /// Calls POST /api/notes/local-timeline.
  Future<List<Note>> localTimeline({
    bool withFiles = false,
    bool withRenotes = true,
    bool withReplies = false,
    int limit = 10,
    String? sinceId,
    String? untilId,
    bool allowPartial = false,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.localTimeline(
      NotesLocalTimelineRequest(
        withFiles: withFiles,
        withRenotes: withRenotes,
        withReplies: withReplies,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        allowPartial: allowPartial,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [localTimeline].
  Future<CursorPage<Note>> localTimelinePage({
    int limit = 20,
    String? untilId,
    bool withFiles = false,
    bool withRenotes = true,
    bool withReplies = false,
    bool allowPartial = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => localTimeline(
        limit: pageLimit,
        untilId: cursor,
        withFiles: withFiles,
        withRenotes: withRenotes,
        withReplies: withReplies,
        allowPartial: allowPartial,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/mentions
  ///
  /// Calls POST /api/notes/mentions.
  ///
  /// Authentication required.
  Future<List<Note>> mentions({
    bool following = false,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    String? visibility,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.mentions(
      NotesMentionsRequest(
        following: following,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        visibility: visibility,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [mentions].
  Future<CursorPage<Note>> mentionsPage({
    int limit = 20,
    String? untilId,
    bool following = false,
    String? visibility,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => mentions(
        limit: pageLimit,
        untilId: cursor,
        following: following,
        visibility: visibility,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/polls/recommendation
  ///
  /// Calls POST /api/notes/polls/recommendation.
  ///
  /// Authentication required.
  Future<List<Note>> pollsRecommendation({
    int limit = 10,
    int offset = 0,
    bool excludeChannels = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.pollsRecommendation(
      NotesPollsRecommendationRequest(
        limit: limit,
        offset: offset,
        excludeChannels: excludeChannels,
      ),
      cancelToken: cancelToken,
    );
  }

  /// notes/polls/vote
  ///
  /// Calls POST /api/notes/polls/vote.
  ///
  /// Authentication required.
  Future<void> pollsVote({
    required String noteId,
    required int choice,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.pollsVote(
      NotesPollsVoteRequest(noteId: noteId, choice: choice),
      cancelToken: cancelToken,
    );
  }

  /// notes/reactions
  ///
  /// Calls POST /api/notes/reactions.
  Future<List<NoteReaction>> reactions({
    required String noteId,
    String? type,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.reactions(
      NotesReactionsRequest(
        noteId: noteId,
        type: type,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [reactions].
  Future<CursorPage<NoteReaction>> reactionsPage({
    int limit = 20,
    String? untilId,
    required String noteId,
    String? type,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<NoteReaction>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => reactions(
        limit: pageLimit,
        untilId: cursor,
        noteId: noteId,
        type: type,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/reactions/create
  ///
  /// Calls POST /api/notes/reactions/create.
  ///
  /// Authentication required.
  Future<void> reactionsCreate({
    required String noteId,
    required String reaction,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.reactionsCreate(
      NotesReactionsCreateRequest(noteId: noteId, reaction: reaction),
      cancelToken: cancelToken,
    );
  }

  /// notes/reactions/delete
  ///
  /// Calls POST /api/notes/reactions/delete.
  ///
  /// Authentication required.
  Future<void> reactionsDelete({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.reactionsDelete(
      NotesReactionsDeleteRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/renotes
  ///
  /// Calls POST /api/notes/renotes.
  Future<List<Note>> renotes({
    required String noteId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.renotes(
      NotesRenotesRequest(
        noteId: noteId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [renotes].
  Future<CursorPage<Note>> renotesPage({
    int limit = 20,
    String? untilId,
    required String noteId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => renotes(
        limit: pageLimit,
        untilId: cursor,
        noteId: noteId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/replies
  ///
  /// Calls POST /api/notes/replies.
  Future<List<Note>> replies({
    required String noteId,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.replies(
      NotesRepliesRequest(
        noteId: noteId,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [replies].
  Future<CursorPage<Note>> repliesPage({
    int limit = 20,
    String? untilId,
    required String noteId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => replies(
        limit: pageLimit,
        untilId: cursor,
        noteId: noteId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/search
  ///
  /// Calls POST /api/notes/search.
  Future<List<Note>> search({
    required String query,
    int? rangeStartAt,
    int? rangeEndAt,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    int offset = 0,
    String? host,
    String? userId,
    String? channelId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.search(
      NotesSearchRequest(
        query: query,
        rangeStartAt: rangeStartAt,
        rangeEndAt: rangeEndAt,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        offset: offset,
        host: host,
        userId: userId,
        channelId: channelId,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [search].
  Future<CursorPage<Note>> searchPage({
    int limit = 20,
    String? untilId,
    required String query,
    int? rangeStartAt,
    int? rangeEndAt,
    int offset = 0,
    String? host,
    String? userId,
    String? channelId,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => search(
        limit: pageLimit,
        untilId: cursor,
        query: query,
        rangeStartAt: rangeStartAt,
        rangeEndAt: rangeEndAt,
        offset: offset,
        host: host,
        userId: userId,
        channelId: channelId,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/search-by-tag
  ///
  /// Calls POST /api/notes/search-by-tag.
  Future<List<Note>> searchByTag({
    bool? reply,
    bool? renote,
    bool withFiles = false,
    bool? poll,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    required String tag,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.searchByTag(
      NotesSearchByTagRequestByTag(
        reply: reply,
        renote: renote,
        withFiles: withFiles,
        poll: poll,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        tag: tag,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [searchByTag].
  Future<CursorPage<Note>> searchByTagPage({
    int limit = 20,
    String? untilId,
    bool? reply,
    bool? renote,
    bool withFiles = false,
    bool? poll,
    required String tag,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => searchByTag(
        limit: pageLimit,
        untilId: cursor,
        reply: reply,
        renote: renote,
        withFiles: withFiles,
        poll: poll,
        tag: tag,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/search-by-tag
  ///
  /// Calls POST /api/notes/search-by-tag.
  Future<List<Note>> searchByTagQuery({
    bool? reply,
    bool? renote,
    bool withFiles = false,
    bool? poll,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    int limit = 10,
    required List<List<String>> query,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.searchByTag(
      NotesSearchByTagRequestByQuery(
        reply: reply,
        renote: renote,
        withFiles: withFiles,
        poll: poll,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
        query: query,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [searchByTagQuery].
  Future<CursorPage<Note>> searchByTagQueryPage({
    int limit = 20,
    String? untilId,
    bool? reply,
    bool? renote,
    bool withFiles = false,
    bool? poll,
    required List<List<String>> query,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => searchByTagQuery(
        limit: pageLimit,
        untilId: cursor,
        reply: reply,
        renote: renote,
        withFiles: withFiles,
        poll: poll,
        query: query,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/show
  ///
  /// Calls POST /api/notes/show.
  Future<Note> show({required String noteId, CancelToken? cancelToken}) async {
    return client.raw.notes.showValue(
      NotesShowValueRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/show-partial-bulk
  ///
  /// Calls POST /api/notes/show-partial-bulk.
  Future<List<NotesShowPartialBulkResponseItem>> showPartialBulk({
    required List<String> noteIds,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.showPartialBulk(
      NotesShowPartialBulkRequest(noteIds: noteIds),
      cancelToken: cancelToken,
    );
  }

  /// notes/state
  ///
  /// Calls POST /api/notes/state.
  ///
  /// Authentication required.
  Future<NotesStateResponse> state({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.state(
      NotesStateRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/thread-muting/create
  ///
  /// Calls POST /api/notes/thread-muting/create.
  ///
  /// Authentication required.
  Future<void> threadMutingCreate({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.threadMutingCreate(
      NotesThreadMutingCreateRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/thread-muting/delete
  ///
  /// Calls POST /api/notes/thread-muting/delete.
  ///
  /// Authentication required.
  Future<void> threadMutingDelete({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.threadMutingDelete(
      NotesThreadMutingDeleteRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/timeline
  ///
  /// Calls POST /api/notes/timeline.
  ///
  /// Authentication required.
  Future<List<Note>> timeline({
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool allowPartial = false,
    bool includeMyRenotes = true,
    bool includeRenotedMyNotes = true,
    bool includeLocalRenotes = true,
    bool withFiles = false,
    bool withRenotes = true,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.timeline(
      NotesTimelineRequest(
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        allowPartial: allowPartial,
        includeMyRenotes: includeMyRenotes,
        includeRenotedMyNotes: includeRenotedMyNotes,
        includeLocalRenotes: includeLocalRenotes,
        withFiles: withFiles,
        withRenotes: withRenotes,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [timeline].
  Future<CursorPage<Note>> timelinePage({
    int limit = 20,
    String? untilId,
    bool allowPartial = false,
    bool includeMyRenotes = true,
    bool includeRenotedMyNotes = true,
    bool includeLocalRenotes = true,
    bool withFiles = false,
    bool withRenotes = true,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => timeline(
        limit: pageLimit,
        untilId: cursor,
        allowPartial: allowPartial,
        includeMyRenotes: includeMyRenotes,
        includeRenotedMyNotes: includeRenotedMyNotes,
        includeLocalRenotes: includeLocalRenotes,
        withFiles: withFiles,
        withRenotes: withRenotes,
        cancelToken: cancelToken,
      ),
    );
  }

  /// notes/translate
  ///
  /// Calls POST /api/notes/translate.
  ///
  /// Authentication required.
  Future<NotesTranslateResponse> translate({
    required String noteId,
    required String targetLang,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.translate(
      NotesTranslateRequest(noteId: noteId, targetLang: targetLang),
      cancelToken: cancelToken,
    );
  }

  /// notes/unrenote
  ///
  /// Calls POST /api/notes/unrenote.
  ///
  /// Authentication required.
  Future<void> unrenote({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.unrenote(
      NotesUnrenoteRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }

  /// notes/user-list-timeline
  ///
  /// Calls POST /api/notes/user-list-timeline.
  ///
  /// Authentication required.
  Future<List<Note>> userListTimeline({
    required String listId,
    int limit = 10,
    String? sinceId,
    String? untilId,
    int? sinceDate,
    int? untilDate,
    bool allowPartial = false,
    bool includeMyRenotes = true,
    bool includeRenotedMyNotes = true,
    bool includeLocalRenotes = true,
    bool withRenotes = true,
    bool withFiles = false,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.userListTimeline(
      NotesUserListTimelineRequest(
        listId: listId,
        limit: limit,
        sinceId: sinceId,
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        allowPartial: allowPartial,
        includeMyRenotes: includeMyRenotes,
        includeRenotedMyNotes: includeRenotedMyNotes,
        includeLocalRenotes: includeLocalRenotes,
        withRenotes: withRenotes,
        withFiles: withFiles,
      ),
      cancelToken: cancelToken,
    );
  }

  /// Fetches a cursor page for [userListTimeline].
  Future<CursorPage<Note>> userListTimelinePage({
    int limit = 20,
    String? untilId,
    required String listId,
    bool allowPartial = false,
    bool includeMyRenotes = true,
    bool includeRenotedMyNotes = true,
    bool includeLocalRenotes = true,
    bool withRenotes = true,
    bool withFiles = false,
    CancelToken? cancelToken,
  }) {
    return CursorPage.fetch<Note>(
      limit: limit,
      untilId: untilId,
      idOf: (item) => item.id,
      fetchPage: (pageLimit, cursor) => userListTimeline(
        limit: pageLimit,
        untilId: cursor,
        listId: listId,
        allowPartial: allowPartial,
        includeMyRenotes: includeMyRenotes,
        includeRenotedMyNotes: includeRenotedMyNotes,
        includeLocalRenotes: includeLocalRenotes,
        withRenotes: withRenotes,
        withFiles: withFiles,
        cancelToken: cancelToken,
      ),
    );
  }

  /// promo/read
  ///
  /// Calls POST /api/promo/read.
  ///
  /// Authentication required.
  Future<void> promoRead({
    required String noteId,
    CancelToken? cancelToken,
  }) async {
    return client.raw.notes.promoRead(
      NotesPromoReadRequest(noteId: noteId),
      cancelToken: cancelToken,
    );
  }
}
