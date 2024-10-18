import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
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
  @HiveType(typeId: 0) // Add HiveType for Hive
  factory GitRepository({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? full_name,
    @HiveField(3) Owner? owner,
    @HiveField(4) String? html_url,
    @HiveField(5) String? description,
    @HiveField(6) int? size,
    @HiveField(7) int? forks_count,
    @HiveField(8) int? open_issues_count,
    @HiveField(9) int? forks,
    @HiveField(10) int? score,
    @HiveField(11) int? stargazers_count,
    @HiveField(12) String? url,
    @HiveField(13) int? watchers_count,
    @HiveField(14) @Default(false) bool bookmarked,
  }) = _GitRepository;

  factory GitRepository.fromJson(Map<String, dynamic> userJson) => _$GitRepositoryFromJson(userJson);
}

@freezed
class Owner with _$Owner {
  @HiveType(typeId: 1) // Add HiveType for Hive
  factory Owner({
    @HiveField(0) String? login,
    @HiveField(1) int? id,
    @HiveField(2) String? nodeId,
    @HiveField(3) String? avatar_url,
    @HiveField(4) String? gravatar_id,
    @HiveField(5) String? url,
    @HiveField(6) String? html_url,
  }) = _Owner;
  factory Owner.fromJson(Map<String, dynamic> userJson) => _$OwnerFromJson(userJson);
}
