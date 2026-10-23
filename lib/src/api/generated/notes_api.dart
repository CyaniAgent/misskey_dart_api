// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'notes_models.dart';

/// Raw generated endpoints for the `notes` API group.
class RawNotesApi {
  /// Creates a raw `notes` API facade.
  RawNotesApi(this.client);

  /// The shared client used for transport and authentication.
  final MisskeyClient client;

  /// notes
  ///
  /// Calls POST /api/notes.
  Future<List<Note>> get(NotesGetRequest request, {CancelToken? cancelToken}) {
    return client.postList<Note>(
      'notes',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/children
  ///
  /// Calls POST /api/notes/children.
  Future<List<Note>> children(
    NotesChildrenRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/children',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/clips
  ///
  /// Calls POST /api/notes/clips.
  Future<List<Clip>> clips(
    NotesClipsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Clip>(
      'notes/clips',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/conversation
  ///
  /// Calls POST /api/notes/conversation.
  Future<List<Note>> conversation(
    NotesConversationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/conversation',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/create
  ///
  /// Calls POST /api/notes/create.
  ///
  /// Authentication required.
  Future<NotesCreateResponse> create(
    NotesCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesCreateResponse>(
      'notes/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: NotesCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/delete
  ///
  /// Calls POST /api/notes/delete.
  ///
  /// Authentication required.
  Future<void> delete(NotesDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'notes/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/count
  ///
  /// Calls POST /api/notes/drafts/count.
  ///
  /// Authentication required.
  Future<JsonMap> draftsCount({CancelToken? cancelToken}) {
    return client.postMap(
      'notes/drafts/count',
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/create
  ///
  /// Calls POST /api/notes/drafts/create.
  ///
  /// Authentication required.
  Future<NotesDraftsCreateResponse> draftsCreate(
    NotesDraftsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesDraftsCreateResponse>(
      'notes/drafts/create',
      body: request.toJson(),
      requiresAuth: true,
      parser: NotesDraftsCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/delete
  ///
  /// Calls POST /api/notes/drafts/delete.
  ///
  /// Authentication required.
  Future<void> draftsDelete(
    NotesDraftsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/drafts/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/list
  ///
  /// Calls POST /api/notes/drafts/list.
  ///
  /// Authentication required.
  Future<List<NoteDraft>> draftsList(
    NotesDraftsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NoteDraft>(
      'notes/drafts/list',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: NoteDraft.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/drafts/update
  ///
  /// Calls POST /api/notes/drafts/update.
  ///
  /// Authentication required.
  Future<NotesDraftsUpdateResponse> draftsUpdate(
    NotesDraftsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesDraftsUpdateResponse>(
      'notes/drafts/update',
      body: request.toJson(),
      requiresAuth: true,
      parser: NotesDraftsUpdateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/favorites/create
  ///
  /// Calls POST /api/notes/favorites/create.
  ///
  /// Authentication required.
  Future<void> favoritesCreate(
    NotesFavoritesCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/favorites/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/favorites/delete
  ///
  /// Calls POST /api/notes/favorites/delete.
  ///
  /// Authentication required.
  Future<void> favoritesDelete(
    NotesFavoritesDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/favorites/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/featured
  ///
  /// Calls POST /api/notes/featured.
  Future<List<Note>> featured(
    NotesFeaturedRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/featured',
      body: request.toJson(),
      httpMethod: httpMethod,
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/global-timeline
  ///
  /// Calls POST /api/notes/global-timeline.
  Future<List<Note>> globalTimeline(
    NotesGlobalTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/global-timeline',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/hybrid-timeline
  ///
  /// Calls POST /api/notes/hybrid-timeline.
  ///
  /// Authentication required.
  Future<List<Note>> hybridTimeline(
    NotesHybridTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/hybrid-timeline',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/local-timeline
  ///
  /// Calls POST /api/notes/local-timeline.
  Future<List<Note>> localTimeline(
    NotesLocalTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/local-timeline',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/mentions
  ///
  /// Calls POST /api/notes/mentions.
  ///
  /// Authentication required.
  Future<List<Note>> mentions(
    NotesMentionsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/mentions',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/polls/recommendation
  ///
  /// Calls POST /api/notes/polls/recommendation.
  ///
  /// Authentication required.
  Future<List<Note>> pollsRecommendation(
    NotesPollsRecommendationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/polls/recommendation',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/polls/vote
  ///
  /// Calls POST /api/notes/polls/vote.
  ///
  /// Authentication required.
  Future<void> pollsVote(
    NotesPollsVoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/polls/vote',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/reactions
  ///
  /// Calls POST /api/notes/reactions.
  Future<List<NoteReaction>> reactions(
    NotesReactionsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NoteReaction>(
      'notes/reactions',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: NoteReaction.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/reactions/create
  ///
  /// Calls POST /api/notes/reactions/create.
  ///
  /// Authentication required.
  Future<void> reactionsCreate(
    NotesReactionsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/reactions/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/reactions/delete
  ///
  /// Calls POST /api/notes/reactions/delete.
  ///
  /// Authentication required.
  Future<void> reactionsDelete(
    NotesReactionsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/reactions/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/renotes
  ///
  /// Calls POST /api/notes/renotes.
  Future<List<Note>> renotes(
    NotesRenotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/renotes',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/replies
  ///
  /// Calls POST /api/notes/replies.
  Future<List<Note>> replies(
    NotesRepliesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/replies',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/search
  ///
  /// Calls POST /api/notes/search.
  Future<List<Note>> search(
    NotesSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/search',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/search-by-tag
  ///
  /// Calls POST /api/notes/search-by-tag.
  Future<List<Note>> searchByTag(
    NotesSearchByTagRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/search-by-tag',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/show
  ///
  /// Calls POST /api/notes/show.
  Future<Note> showValue(
    NotesShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Note>(
      'notes/show',
      body: request.toJson(),
      requiresAuth: false,
      parser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/show-partial-bulk
  ///
  /// Calls POST /api/notes/show-partial-bulk.
  Future<List<NotesShowPartialBulkResponseItem>> showPartialBulk(
    NotesShowPartialBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NotesShowPartialBulkResponseItem>(
      'notes/show-partial-bulk',
      body: request.toJson(),
      requiresAuth: false,
      itemParser: NotesShowPartialBulkResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/state
  ///
  /// Calls POST /api/notes/state.
  ///
  /// Authentication required.
  Future<NotesStateResponse> state(
    NotesStateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesStateResponse>(
      'notes/state',
      body: request.toJson(),
      requiresAuth: true,
      parser: NotesStateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/thread-muting/create
  ///
  /// Calls POST /api/notes/thread-muting/create.
  ///
  /// Authentication required.
  Future<void> threadMutingCreate(
    NotesThreadMutingCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/thread-muting/create',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/thread-muting/delete
  ///
  /// Calls POST /api/notes/thread-muting/delete.
  ///
  /// Authentication required.
  Future<void> threadMutingDelete(
    NotesThreadMutingDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/thread-muting/delete',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/timeline
  ///
  /// Calls POST /api/notes/timeline.
  ///
  /// Authentication required.
  Future<List<Note>> timeline(
    NotesTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/timeline',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/translate
  ///
  /// Calls POST /api/notes/translate.
  ///
  /// Authentication required.
  Future<NotesTranslateResponse> translate(
    NotesTranslateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesTranslateResponse>(
      'notes/translate',
      body: request.toJson(),
      requiresAuth: true,
      parser: NotesTranslateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// notes/unrenote
  ///
  /// Calls POST /api/notes/unrenote.
  ///
  /// Authentication required.
  Future<void> unrenote(
    NotesUnrenoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/unrenote',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }

  /// notes/user-list-timeline
  ///
  /// Calls POST /api/notes/user-list-timeline.
  ///
  /// Authentication required.
  Future<List<Note>> userListTimeline(
    NotesUserListTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/user-list-timeline',
      body: request.toJson(),
      requiresAuth: true,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  /// promo/read
  ///
  /// Calls POST /api/promo/read.
  ///
  /// Authentication required.
  Future<void> promoRead(
    NotesPromoReadRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'promo/read',
      body: request.toJson(),
      requiresAuth: true,
      cancelToken: cancelToken,
    );
  }
}
