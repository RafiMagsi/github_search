import 'dart:developer';

import 'package:LyvelyExercise/modules/bookmarks/services/bookmarks_view_model.dart';
import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:LyvelyExercise/modules/home/presentation/widgets/git_item_widget.dart';
import 'package:LyvelyExercise/utils/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const int pageSize = 10;

class BookmarkListView extends ConsumerWidget {
  const BookmarkListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<GitRepository> repositories = ref.watch(bookmarksNotifierProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: repositories.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: repositories.length,
                  itemBuilder: (context, index) {
                    return GitItemWidget(repo: repositories.elementAt(index));
                  },
                )
              : const Center(child: Text('Sorry, you don\'t have any bookmarks  ')),
        )
      ],
    );
  }
}
