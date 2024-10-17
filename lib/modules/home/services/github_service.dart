import 'package:LyvelyExercise/utils/api_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../configs/api_endpoints.dart';
import '../data/git_model.dart';
part 'github_service.g.dart';

@riverpod
class GithubNotifier extends _$GithubNotifier {
  @override
  Future<SearchResult> build(ApiService apiService) {
    return _fetch();
  }

  // USER PUBLIC METHODS
  Future<SearchResult> getUserList() async {
    return _fetch();
  }

  // API SERVICE PRIVATE METHODS
  Future<SearchResult> _fetch() async {
    final response = await apiService.fetchAll(APIEndPoints.searchRepository);
    return response;
  }

  refresh() async {
    state = const AsyncLoading();
    ref.invalidateSelf();
    await future;
  }
}
