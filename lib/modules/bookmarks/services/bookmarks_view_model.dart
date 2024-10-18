import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bookmarks_view_model.g.dart';

@riverpod
class BookmarksNotifier extends _$BookmarksNotifier {
  final box = Hive.box<GitRepository>('repositories');

  @override
  List<GitRepository> build() {
    // box.clear();
    return _retrieveRepositoriesFromLocalStorage();
  }

  // PUBLIC METHODS
  Future<void> saveRepo(GitRepository repo) => _saveRepositoriesToLocalStorage(repo);
  List<GitRepository> getRepos() => _retrieveRepositoriesFromLocalStorage();

  // PRIVATE METHODS
  Future<void> _saveRepositoriesToLocalStorage(GitRepository repository) async {
    bool isBookmarked = repository.bookmarked;
    // Update the repository in Hive
    final updatedRepository = repository.copyWith(bookmarked: !isBookmarked);

    if (!isBookmarked) {
      // If not bookmarked, add to the bookmarks Hive box
      await box.put(updatedRepository.id, updatedRepository);
    } else {
      // If bookmarked, remove from the bookmarks Hive box
      _removeRepositoriesToLocalStorage(updatedRepository);
    }

    ref.invalidateSelf();
  }

  void _removeRepositoriesToLocalStorage(GitRepository repository) async {
    await box.delete(repository.id);
  }

  List<GitRepository> _retrieveRepositoriesFromLocalStorage() {
    return box.values.toList();
  }
}

final bookmarkProvider = StateProvider<bool>((ref) {
  return false;
});
