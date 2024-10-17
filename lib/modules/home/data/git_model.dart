import 'package:freezed_annotation/freezed_annotation.dart';
part 'git_model.freezed.dart';
part 'git_model.g.dart';

@freezed
class SearchResult with _$SearchResult {
  factory SearchResult({
    required int? totalCount,
    required bool? incompleteResults,
    required List<GitRepository> items,
  }) = _SearchResult;
  factory SearchResult.fromJson(Map<String, dynamic> userJson) => _$SearchResultFromJson(userJson);
}

@freezed
class GitRepository with _$GitRepository {
  factory GitRepository({
    int? id,
    String? name,
    String? fullName,
    Owner? owner,
    String? htmlUrl,
    String? description,
    int? size,
    int? forksCount,
    int? openIssuesCount,
    int? forks,
    int? openIssues,
    int? score,
    int? stargazersCount,
  }) = _GitRepository;

  factory GitRepository.fromJson(Map<String, dynamic> userJson) => _$GitRepositoryFromJson(userJson);
}

@freezed
class Owner with _$Owner {
  factory Owner({
    String? login,
    int? id,
    String? nodeId,
    String? avatarUrl,
    String? gravatarId,
    String? url,
    String? htmlUrl,
    String? followersUrl,
    String? followingUrl,
    String? gistsUrl,
    String? starredUrl,
    String? subscriptionsUrl,
    String? organizationsUrl,
    String? reposUrl,
    String? eventsUrl,
    String? receivedEventsUrl,
    bool? siteAdmin,
  }) = _Owner;
  factory Owner.fromJson(Map<String, dynamic> userJson) => _$OwnerFromJson(userJson);
}
