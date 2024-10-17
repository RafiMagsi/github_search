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
    String? full_name,
    Owner? owner,
    String? html_url,
    String? description,
    int? size,
    int? forks_count,
    int? open_issues_count,
    int? forks,
    int? score,
    int? stargazers_count,
    String? url,
    int? watchers_count,
  }) = _GitRepository;

  factory GitRepository.fromJson(Map<String, dynamic> userJson) => _$GitRepositoryFromJson(userJson);
}

@freezed
class Owner with _$Owner {
  factory Owner({
    String? login,
    int? id,
    String? nodeId,
    String? avatar_url,
    String? gravatar_id,
    String? url,
    String? html_url,
  }) = _Owner;
  factory Owner.fromJson(Map<String, dynamic> userJson) => _$OwnerFromJson(userJson);
}
