import 'package:LyvelyExercise/modules/home/presentation/git_item_widget.dart';
import 'package:LyvelyExercise/modules/home/services/github_service.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/github_view_provider.dart';

@RoutePage()
class HomeView extends ConsumerWidget {
  const HomeView({super.key, @PathParam('title') required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiService = ref.watch(gitApiServiceProvider);
    final repositories = ref.watch(githubNotifierProvider(apiService));
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
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
      floatingActionButton: floatingButton(ref),
    );
  }

  floatingButton(WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        // ref.context.pushNamed(Routes.addUser);
      },
      child: const Icon(Icons.add),
    );
  }
}
