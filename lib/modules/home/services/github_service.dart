import 'dart:async';

import 'package:LyvelyExercise/utils/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../configs/api_endpoints.dart';
import '../../../utils/app_session.dart';
import '../data/git_model.dart';
part 'github_service.g.dart';

const int _pageSize = 10;

@riverpod
class Query extends _$Query {
  @override
  String build() => '';
  void update(val) => state = val;
}

@riverpod
class GithubNotifier extends _$GithubNotifier {
  @override
  Future<SearchResult> build(
    ApiService apiService, {
    int? page = 1,
  }) {
    return _fetch();
  }

  // REPO PUBLIC METHODS
  Future<SearchResult> getRepoList() async {
    return _fetch();
  }

  // API SERVICE PRIVATE METHODS
  Future<SearchResult> _fetch() async {
    var headers0 = <String, String>{};
    headers0['Authorization'] = 'Bearer ${AppSession.accessToken}';
    headers0['Accept'] = 'application/vnd.github+json';

    final response = await apiService.fetchAll(APIEndPoints.searchRepository,
        query: ref.watch(queryProvider), page: page, limit: _pageSize, headers: headers0);
    return response;
  }

  // Update the search query and reset pagination
  void updateQuery(String query) {
    if (ref.watch(queryProvider) != query) {
      ref.read(queryProvider.notifier).update(query);
      refresh();
    }
  }

  refresh() async {
    state = const AsyncLoading();
    ref.invalidateSelf();
    await future;
  }

  bookmark(GitRepository repo) async {
    var headers0 = <String, String>{};
  }
}
