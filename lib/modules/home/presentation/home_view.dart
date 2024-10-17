import 'package:LyvelyExercise/configs/strings.dart';
import 'package:LyvelyExercise/modules/home/presentation/git_item_widget.dart';
import 'package:LyvelyExercise/modules/home/services/github_service.dart';
import 'package:LyvelyExercise/templates/page_template.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../templates/search_template.dart';
import '../services/github_view_provider.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiService = ref.watch(gitApiServiceProvider);
    final repositories = ref.watch(githubNotifierProvider(apiService));
    return PageTemplate(
      titleWidget: SearchTemplate(
        controller: searchController,
        onChange: (value) {
          ref.watch(searchControllerNotifierProvider(searchController).notifier).updateText(value);
          return null;
        },
      ),
      rootPage: true,
      pageTitle: AppStrings.appName,
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(githubNotifierProvider(apiService).notifier).refresh(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: repositories.when(
                data: (repoList) {
                  return ListView.builder(
                      itemCount: repoList.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GitItemWidget(repo: repoList.items.elementAt(index));
                      });
                },
                error: (error, stackTrace) {
                  return Text(error.toString());
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
