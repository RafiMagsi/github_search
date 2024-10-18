import 'dart:async';

import 'package:LyvelyExercise/configs/strings.dart';
import 'package:LyvelyExercise/modules/home/presentation/repo_list_view.dart';
import 'package:LyvelyExercise/modules/home/services/github_service.dart';
import 'package:LyvelyExercise/templates/page_template.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../templates/search_template.dart';
import '../../bookmarks/presentation/bookmarks_view.dart';
import '../services/github_view_provider.dart';

@RoutePage()
class GitHubRepoView extends ConsumerStatefulWidget {
  const GitHubRepoView({super.key});

  @override
  ConsumerState<GitHubRepoView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<GitHubRepoView> {
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    final apiService = ref.watch(gitApiServiceProvider);
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);

    return PageTemplate(
      titleWidget: indexBottomNavbar == 0
          ? SearchTemplate(
              controller: searchController,
              onChange: (value) {
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  if (_debounce?.isActive ?? false) _debounce!.cancel();
                  _debounce = await Timer(const Duration(milliseconds: 500), () {
                    ref.watch(githubNotifierProvider(apiService).notifier).updateQuery(value);
                  });
                });
                return null;
              },
            )
          : Text('Bookmarks'),
      rootPage: true,
      pageTitle: AppStrings.appName,
      body: tabs(ref, indexBottomNavbar, apiService),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          searchController.text = '';
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
        },
        currentIndex: indexBottomNavbar,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bookmark_solid), label: 'Bookmarks'),
        ],
      ),
    );
  }

  tabs(WidgetRef ref, int indexBottomNavbar, apiService) {
    switch (indexBottomNavbar) {
      case 0:
        return RefreshIndicator(
          onRefresh: () => ref.watch(githubNotifierProvider(apiService).notifier).refresh(),
          child: RepoListView(apiService: apiService),
        );
      case 1:
        return BookmarksView();
      default:
        return ErrorWidget(Exception("View not found"));
    }
  }
}
