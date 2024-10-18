import 'dart:developer';

import 'package:LyvelyExercise/modules/home/presentation/widgets/git_item_widget.dart';
import 'package:LyvelyExercise/utils/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/app_shammers.dart';
import '../services/github_service.dart';

const int pageSize = 10;

class RepoListView extends ConsumerWidget {
  const RepoListView({required this.apiService, super.key});

  final ApiService apiService;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final page = index ~/ pageSize + 1;
              final indexInPage = index % pageSize;
              final repositories = ref.watch(githubNotifierProvider(apiService, page: page));

              return repositories.when(
                data: (repoList) {
                  if (indexInPage >= repoList.items.length) {
                    return null;
                  }
                  return GitItemWidget(repo: repoList.items.elementAt(indexInPage));
                },
                error: (err, stack) => Center(child: Text(err.toString())),
                loading: () {
                  return AppShimmers.repositoryShimmer();
                },
              );
            },
          ),
        )
      ],
    );
  }
}
