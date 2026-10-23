// SPDX-License-Identifier: BSD-3-Clause

// GENERATED CODE - DO NOT EDIT BY HAND.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/generated/generated.dart';
import '../../models/json.dart';

part 'charts_models.g.dart';

enum ChartsActiveUsersRequestSpan { day, hour }

enum ChartsApRequestRequestSpan { day, hour }

enum ChartsDriveRequestSpan { day, hour }

enum ChartsFederationRequestSpan { day, hour }

enum ChartsInstanceRequestSpan { day, hour }

enum ChartsNotesRequestSpan { day, hour }

enum ChartsUserDriveRequestSpan { day, hour }

enum ChartsUserFollowingRequestSpan { day, hour }

enum ChartsUserNotesRequestSpan { day, hour }

enum ChartsUserPvRequestSpan { day, hour }

enum ChartsUserReactionsRequestSpan { day, hour }

enum ChartsUsersRequestSpan { day, hour }

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsActiveUsersRequest {
  const ChartsActiveUsersRequest({
    required this.span,
    this.limit = 30,
    this.offset,
  });
  final ChartsActiveUsersRequestSpan span;
  final int limit;
  final int? offset;

  factory ChartsActiveUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsActiveUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsActiveUsersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsActiveUsersResponse {
  const ChartsActiveUsersResponse({
    required this.readWrite,
    required this.read,
    required this.write,
    required this.registeredWithinWeek,
    required this.registeredWithinMonth,
    required this.registeredWithinYear,
    required this.registeredOutsideWeek,
    required this.registeredOutsideMonth,
    required this.registeredOutsideYear,
  });
  final List<num> readWrite;
  final List<num> read;
  final List<num> write;
  final List<num> registeredWithinWeek;
  final List<num> registeredWithinMonth;
  final List<num> registeredWithinYear;
  final List<num> registeredOutsideWeek;
  final List<num> registeredOutsideMonth;
  final List<num> registeredOutsideYear;

  factory ChartsActiveUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsActiveUsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsActiveUsersResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsApRequestRequest {
  const ChartsApRequestRequest({
    required this.span,
    this.limit = 30,
    this.offset,
  });
  final ChartsApRequestRequestSpan span;
  final int limit;
  final int? offset;

  factory ChartsApRequestRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsApRequestRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsApRequestRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsApRequestResponse {
  const ChartsApRequestResponse({
    required this.deliverFailed,
    required this.deliverSucceeded,
    required this.inboxReceived,
  });
  final List<num> deliverFailed;
  final List<num> deliverSucceeded;
  final List<num> inboxReceived;

  factory ChartsApRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsApRequestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsApRequestResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsDriveRequest {
  const ChartsDriveRequest({required this.span, this.limit = 30, this.offset});
  final ChartsDriveRequestSpan span;
  final int limit;
  final int? offset;

  factory ChartsDriveRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsDriveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsDriveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsDriveResponseLocal {
  const ChartsDriveResponseLocal({
    required this.incCount,
    required this.incSize,
    required this.decCount,
    required this.decSize,
  });
  final List<num> incCount;
  final List<num> incSize;
  final List<num> decCount;
  final List<num> decSize;

  factory ChartsDriveResponseLocal.fromJson(Map<String, dynamic> json) =>
      _$ChartsDriveResponseLocalFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsDriveResponseLocalToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsDriveResponseRemote {
  const ChartsDriveResponseRemote({
    required this.incCount,
    required this.incSize,
    required this.decCount,
    required this.decSize,
  });
  final List<num> incCount;
  final List<num> incSize;
  final List<num> decCount;
  final List<num> decSize;

  factory ChartsDriveResponseRemote.fromJson(Map<String, dynamic> json) =>
      _$ChartsDriveResponseRemoteFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsDriveResponseRemoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsDriveResponse {
  const ChartsDriveResponse({required this.local, required this.remote});
  final ChartsDriveResponseLocal local;
  final ChartsDriveResponseRemote remote;

  factory ChartsDriveResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsDriveResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsDriveResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsFederationRequest {
  const ChartsFederationRequest({
    required this.span,
    this.limit = 30,
    this.offset,
  });
  final ChartsFederationRequestSpan span;
  final int limit;
  final int? offset;

  factory ChartsFederationRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsFederationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsFederationRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsFederationResponse {
  const ChartsFederationResponse({
    required this.deliveredInstances,
    required this.inboxInstances,
    required this.stalled,
    required this.sub,
    required this.pub,
    required this.pubsub,
    required this.subActive,
    required this.pubActive,
  });
  final List<num> deliveredInstances;
  final List<num> inboxInstances;
  final List<num> stalled;
  final List<num> sub;
  final List<num> pub;
  final List<num> pubsub;
  final List<num> subActive;
  final List<num> pubActive;

  factory ChartsFederationResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsFederationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsFederationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceRequest {
  const ChartsInstanceRequest({
    required this.span,
    this.limit = 30,
    this.offset,
    required this.host,
  });
  final ChartsInstanceRequestSpan span;
  final int limit;
  final int? offset;
  final String host;

  factory ChartsInstanceRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsInstanceRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseRequests {
  const ChartsInstanceResponseRequests({
    required this.failed,
    required this.succeeded,
    required this.received,
  });
  final List<num> failed;
  final List<num> succeeded;
  final List<num> received;

  factory ChartsInstanceResponseRequests.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseRequestsFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsInstanceResponseRequestsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseNotesDiffs {
  const ChartsInstanceResponseNotesDiffs({
    required this.normal,
    required this.reply,
    required this.renote,
    required this.withFile,
  });
  final List<num> normal;
  final List<num> reply;
  final List<num> renote;
  final List<num> withFile;

  factory ChartsInstanceResponseNotesDiffs.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsInstanceResponseNotesDiffsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsInstanceResponseNotesDiffsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseNotes {
  const ChartsInstanceResponseNotes({
    required this.total,
    required this.inc,
    required this.dec,
    required this.diffs,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;
  final ChartsInstanceResponseNotesDiffs diffs;

  factory ChartsInstanceResponseNotes.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseNotesFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsInstanceResponseNotesToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseUsers {
  const ChartsInstanceResponseUsers({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsInstanceResponseUsers.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseUsersFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsInstanceResponseUsersToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseFollowing {
  const ChartsInstanceResponseFollowing({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsInstanceResponseFollowing.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseFollowingFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsInstanceResponseFollowingToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseFollowers {
  const ChartsInstanceResponseFollowers({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsInstanceResponseFollowers.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseFollowersFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsInstanceResponseFollowersToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponseDrive {
  const ChartsInstanceResponseDrive({
    required this.totalFiles,
    required this.incFiles,
    required this.decFiles,
    required this.incUsage,
    required this.decUsage,
  });
  final List<num> totalFiles;
  final List<num> incFiles;
  final List<num> decFiles;
  final List<num> incUsage;
  final List<num> decUsage;

  factory ChartsInstanceResponseDrive.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseDriveFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsInstanceResponseDriveToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsInstanceResponse {
  const ChartsInstanceResponse({
    required this.requests,
    required this.notes,
    required this.users,
    required this.following,
    required this.followers,
    required this.drive,
  });
  final ChartsInstanceResponseRequests requests;
  final ChartsInstanceResponseNotes notes;
  final ChartsInstanceResponseUsers users;
  final ChartsInstanceResponseFollowing following;
  final ChartsInstanceResponseFollowers followers;
  final ChartsInstanceResponseDrive drive;

  factory ChartsInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsInstanceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsInstanceResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsNotesRequest {
  const ChartsNotesRequest({required this.span, this.limit = 30, this.offset});
  final ChartsNotesRequestSpan span;
  final int limit;
  final int? offset;

  factory ChartsNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsNotesResponseLocalDiffs {
  const ChartsNotesResponseLocalDiffs({
    required this.normal,
    required this.reply,
    required this.renote,
    required this.withFile,
  });
  final List<num> normal;
  final List<num> reply;
  final List<num> renote;
  final List<num> withFile;

  factory ChartsNotesResponseLocalDiffs.fromJson(Map<String, dynamic> json) =>
      _$ChartsNotesResponseLocalDiffsFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsNotesResponseLocalDiffsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsNotesResponseLocal {
  const ChartsNotesResponseLocal({
    required this.total,
    required this.inc,
    required this.dec,
    required this.diffs,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;
  final ChartsNotesResponseLocalDiffs diffs;

  factory ChartsNotesResponseLocal.fromJson(Map<String, dynamic> json) =>
      _$ChartsNotesResponseLocalFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsNotesResponseLocalToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsNotesResponseRemoteDiffs {
  const ChartsNotesResponseRemoteDiffs({
    required this.normal,
    required this.reply,
    required this.renote,
    required this.withFile,
  });
  final List<num> normal;
  final List<num> reply;
  final List<num> renote;
  final List<num> withFile;

  factory ChartsNotesResponseRemoteDiffs.fromJson(Map<String, dynamic> json) =>
      _$ChartsNotesResponseRemoteDiffsFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsNotesResponseRemoteDiffsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsNotesResponseRemote {
  const ChartsNotesResponseRemote({
    required this.total,
    required this.inc,
    required this.dec,
    required this.diffs,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;
  final ChartsNotesResponseRemoteDiffs diffs;

  factory ChartsNotesResponseRemote.fromJson(Map<String, dynamic> json) =>
      _$ChartsNotesResponseRemoteFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsNotesResponseRemoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsNotesResponse {
  const ChartsNotesResponse({required this.local, required this.remote});
  final ChartsNotesResponseLocal local;
  final ChartsNotesResponseRemote remote;

  factory ChartsNotesResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsNotesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsNotesResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserDriveRequest {
  const ChartsUserDriveRequest({
    required this.span,
    this.limit = 30,
    this.offset,
    required this.userId,
  });
  final ChartsUserDriveRequestSpan span;
  final int limit;
  final int? offset;
  final String userId;

  factory ChartsUserDriveRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserDriveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserDriveRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserDriveResponse {
  const ChartsUserDriveResponse({
    required this.totalCount,
    required this.totalSize,
    required this.incCount,
    required this.incSize,
    required this.decCount,
    required this.decSize,
  });
  final List<num> totalCount;
  final List<num> totalSize;
  final List<num> incCount;
  final List<num> incSize;
  final List<num> decCount;
  final List<num> decSize;

  factory ChartsUserDriveResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserDriveResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserDriveResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingRequest {
  const ChartsUserFollowingRequest({
    required this.span,
    this.limit = 30,
    this.offset,
    required this.userId,
  });
  final ChartsUserFollowingRequestSpan span;
  final int limit;
  final int? offset;
  final String userId;

  factory ChartsUserFollowingRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserFollowingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserFollowingRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponseLocalFollowings {
  const ChartsUserFollowingResponseLocalFollowings({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsUserFollowingResponseLocalFollowings.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserFollowingResponseLocalFollowingsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserFollowingResponseLocalFollowingsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponseLocalFollowers {
  const ChartsUserFollowingResponseLocalFollowers({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsUserFollowingResponseLocalFollowers.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserFollowingResponseLocalFollowersFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserFollowingResponseLocalFollowersToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponseLocal {
  const ChartsUserFollowingResponseLocal({
    required this.followings,
    required this.followers,
  });
  final ChartsUserFollowingResponseLocalFollowings followings;
  final ChartsUserFollowingResponseLocalFollowers followers;

  factory ChartsUserFollowingResponseLocal.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserFollowingResponseLocalFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserFollowingResponseLocalToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponseRemoteFollowings {
  const ChartsUserFollowingResponseRemoteFollowings({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsUserFollowingResponseRemoteFollowings.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserFollowingResponseRemoteFollowingsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserFollowingResponseRemoteFollowingsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponseRemoteFollowers {
  const ChartsUserFollowingResponseRemoteFollowers({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsUserFollowingResponseRemoteFollowers.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserFollowingResponseRemoteFollowersFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserFollowingResponseRemoteFollowersToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponseRemote {
  const ChartsUserFollowingResponseRemote({
    required this.followings,
    required this.followers,
  });
  final ChartsUserFollowingResponseRemoteFollowings followings;
  final ChartsUserFollowingResponseRemoteFollowers followers;

  factory ChartsUserFollowingResponseRemote.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserFollowingResponseRemoteFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserFollowingResponseRemoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserFollowingResponse {
  const ChartsUserFollowingResponse({
    required this.local,
    required this.remote,
  });
  final ChartsUserFollowingResponseLocal local;
  final ChartsUserFollowingResponseRemote remote;

  factory ChartsUserFollowingResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserFollowingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserFollowingResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserNotesRequest {
  const ChartsUserNotesRequest({
    required this.span,
    this.limit = 30,
    this.offset,
    required this.userId,
  });
  final ChartsUserNotesRequestSpan span;
  final int limit;
  final int? offset;
  final String userId;

  factory ChartsUserNotesRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserNotesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserNotesRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserNotesResponseDiffs {
  const ChartsUserNotesResponseDiffs({
    required this.normal,
    required this.reply,
    required this.renote,
    required this.withFile,
  });
  final List<num> normal;
  final List<num> reply;
  final List<num> renote;
  final List<num> withFile;

  factory ChartsUserNotesResponseDiffs.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserNotesResponseDiffsFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserNotesResponseDiffsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserNotesResponse {
  const ChartsUserNotesResponse({
    required this.total,
    required this.inc,
    required this.dec,
    required this.diffs,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;
  final ChartsUserNotesResponseDiffs diffs;

  factory ChartsUserNotesResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserNotesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserNotesResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserPvRequest {
  const ChartsUserPvRequest({
    required this.span,
    this.limit = 30,
    this.offset,
    required this.userId,
  });
  final ChartsUserPvRequestSpan span;
  final int limit;
  final int? offset;
  final String userId;

  factory ChartsUserPvRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserPvRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserPvRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserPvResponseUpv {
  const ChartsUserPvResponseUpv({required this.user, required this.visitor});
  final List<num> user;
  final List<num> visitor;

  factory ChartsUserPvResponseUpv.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserPvResponseUpvFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserPvResponseUpvToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserPvResponsePv {
  const ChartsUserPvResponsePv({required this.user, required this.visitor});
  final List<num> user;
  final List<num> visitor;

  factory ChartsUserPvResponsePv.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserPvResponsePvFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserPvResponsePvToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserPvResponse {
  const ChartsUserPvResponse({required this.upv, required this.pv});
  final ChartsUserPvResponseUpv upv;
  final ChartsUserPvResponsePv pv;

  factory ChartsUserPvResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserPvResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserPvResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserReactionsRequest {
  const ChartsUserReactionsRequest({
    required this.span,
    this.limit = 30,
    this.offset,
    required this.userId,
  });
  final ChartsUserReactionsRequestSpan span;
  final int limit;
  final int? offset;
  final String userId;

  factory ChartsUserReactionsRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserReactionsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserReactionsRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserReactionsResponseLocal {
  const ChartsUserReactionsResponseLocal({required this.count});
  final List<num> count;

  factory ChartsUserReactionsResponseLocal.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserReactionsResponseLocalFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserReactionsResponseLocalToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserReactionsResponseRemote {
  const ChartsUserReactionsResponseRemote({required this.count});
  final List<num> count;

  factory ChartsUserReactionsResponseRemote.fromJson(
    Map<String, dynamic> json,
  ) => _$ChartsUserReactionsResponseRemoteFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ChartsUserReactionsResponseRemoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUserReactionsResponse {
  const ChartsUserReactionsResponse({
    required this.local,
    required this.remote,
  });
  final ChartsUserReactionsResponseLocal local;
  final ChartsUserReactionsResponseRemote remote;

  factory ChartsUserReactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsUserReactionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUserReactionsResponseToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUsersRequest {
  const ChartsUsersRequest({required this.span, this.limit = 30, this.offset});
  final ChartsUsersRequestSpan span;
  final int limit;
  final int? offset;

  factory ChartsUsersRequest.fromJson(Map<String, dynamic> json) =>
      _$ChartsUsersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUsersRequestToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUsersResponseLocal {
  const ChartsUsersResponseLocal({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsUsersResponseLocal.fromJson(Map<String, dynamic> json) =>
      _$ChartsUsersResponseLocalFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUsersResponseLocalToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUsersResponseRemote {
  const ChartsUsersResponseRemote({
    required this.total,
    required this.inc,
    required this.dec,
  });
  final List<num> total;
  final List<num> inc;
  final List<num> dec;

  factory ChartsUsersResponseRemote.fromJson(Map<String, dynamic> json) =>
      _$ChartsUsersResponseRemoteFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUsersResponseRemoteToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChartsUsersResponse {
  const ChartsUsersResponse({required this.local, required this.remote});
  final ChartsUsersResponseLocal local;
  final ChartsUsersResponseRemote remote;

  factory ChartsUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartsUsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChartsUsersResponseToJson(this);
}
