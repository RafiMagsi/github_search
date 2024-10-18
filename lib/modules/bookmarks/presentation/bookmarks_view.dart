import 'package:LyvelyExercise/modules/bookmarks/presentation/bookmarks_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarksView extends ConsumerWidget {
  const BookmarksView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BookmarkListView();
  }
}
