import 'dart:async';

import 'package:LyvelyExercise/utils/api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../configs/api_endpoints.dart';
import '../../../utils/app_session.dart';
import '../data/git_model.dart';
part 'github_service.g.dart';

const int _pageSize = 10;

@riverpod
class GithubNotifier extends _$GithubNotifier {
  String _query = 'dart'; // Default search query

  @override
  Future<SearchResult> build(ApiService apiService, {int? page = 1}) {
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
    headers0['Accept-Language'] = 'application/vnd.github+json';

    final response =
        await apiService.fetchAll(APIEndPoints.searchRepository, query: _query, page: page, limit: _pageSize, headers: headers0);
    return response;
  }

  // Update the search query and reset pagination
  void updateQuery(String query) {
    if (_query != query) {
      _query = query;
      refresh();
    }
  }

  refresh() async {
    state = const AsyncLoading();
    ref.invalidateSelf();
    await future;
  }
}
