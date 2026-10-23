// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:dio/dio.dart';

import '../../client.dart';
import '../../config.dart';
import '../../models/generated/generated.dart';
import '../../models/json.dart';
import 'notes_models.dart';

class NotesApi {
  NotesApi(this.client);

  final MisskeyClient client;

  Future<List<Note>> get(NotesGetRequest request, {CancelToken? cancelToken}) {
    return client.postList<Note>(
      'notes',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> children(
    NotesChildrenRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/children',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Clip>> clips(
    NotesClipsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Clip>(
      'notes/clips',
      body: request.toJson(),
      itemParser: Clip.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> conversation(
    NotesConversationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/conversation',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<NotesCreateResponse> create(
    NotesCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesCreateResponse>(
      'notes/create',
      body: request.toJson(),
      parser: NotesCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> delete(NotesDeleteRequest request, {CancelToken? cancelToken}) {
    return client.postVoid(
      'notes/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<JsonMap> draftsCount({CancelToken? cancelToken}) {
    return client.postMap('notes/drafts/count', cancelToken: cancelToken);
  }

  Future<NotesDraftsCreateResponse> draftsCreate(
    NotesDraftsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesDraftsCreateResponse>(
      'notes/drafts/create',
      body: request.toJson(),
      parser: NotesDraftsCreateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> draftsDelete(
    NotesDraftsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/drafts/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<NoteDraft>> draftsList(
    NotesDraftsListRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NoteDraft>(
      'notes/drafts/list',
      body: request.toJson(),
      itemParser: NoteDraft.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<NotesDraftsUpdateResponse> draftsUpdate(
    NotesDraftsUpdateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesDraftsUpdateResponse>(
      'notes/drafts/update',
      body: request.toJson(),
      parser: NotesDraftsUpdateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> favoritesCreate(
    NotesFavoritesCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/favorites/create',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> favoritesDelete(
    NotesFavoritesDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/favorites/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> featured(
    NotesFeaturedRequest request, {
    MisskeyHttpMethod httpMethod = MisskeyHttpMethod.post,
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/featured',
      body: request.toJson(),
      httpMethod: httpMethod,
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> globalTimeline(
    NotesGlobalTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/global-timeline',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> hybridTimeline(
    NotesHybridTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/hybrid-timeline',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> localTimeline(
    NotesLocalTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/local-timeline',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> mentions(
    NotesMentionsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/mentions',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> pollsRecommendation(
    NotesPollsRecommendationRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/polls/recommendation',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> pollsVote(
    NotesPollsVoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/polls/vote',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<NoteReaction>> reactions(
    NotesReactionsRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NoteReaction>(
      'notes/reactions',
      body: request.toJson(),
      itemParser: NoteReaction.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> reactionsCreate(
    NotesReactionsCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/reactions/create',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> reactionsDelete(
    NotesReactionsDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/reactions/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> renotes(
    NotesRenotesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/renotes',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> replies(
    NotesRepliesRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/replies',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> search(
    NotesSearchRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/search',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> searchByTag(
    NotesSearchByTagRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/search-by-tag',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<Note> showValue(
    NotesShowValueRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<Note>(
      'notes/show',
      body: request.toJson(),
      parser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<List<NotesShowPartialBulkResponseItem>> showPartialBulk(
    NotesShowPartialBulkRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<NotesShowPartialBulkResponseItem>(
      'notes/show-partial-bulk',
      body: request.toJson(),
      itemParser: NotesShowPartialBulkResponseItem.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<NotesStateResponse> state(
    NotesStateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesStateResponse>(
      'notes/state',
      body: request.toJson(),
      parser: NotesStateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> threadMutingCreate(
    NotesThreadMutingCreateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/thread-muting/create',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<void> threadMutingDelete(
    NotesThreadMutingDeleteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/thread-muting/delete',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> timeline(
    NotesTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/timeline',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<NotesTranslateResponse> translate(
    NotesTranslateRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postModel<NotesTranslateResponse>(
      'notes/translate',
      body: request.toJson(),
      parser: NotesTranslateResponse.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> unrenote(
    NotesUnrenoteRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'notes/unrenote',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }

  Future<List<Note>> userListTimeline(
    NotesUserListTimelineRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postList<Note>(
      'notes/user-list-timeline',
      body: request.toJson(),
      itemParser: Note.fromJson,
      cancelToken: cancelToken,
    );
  }

  Future<void> promoRead(
    NotesPromoReadRequest request, {
    CancelToken? cancelToken,
  }) {
    return client.postVoid(
      'promo/read',
      body: request.toJson(),
      cancelToken: cancelToken,
    );
  }
}
