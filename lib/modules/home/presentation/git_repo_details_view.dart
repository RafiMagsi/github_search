import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:LyvelyExercise/modules/home/presentation/widgets/counter_widget.dart';
import 'package:LyvelyExercise/modules/home/presentation/widgets/repo_info.dart';
import 'package:LyvelyExercise/modules/home/presentation/widgets/repo_owner_info.dart';
import 'package:LyvelyExercise/modules/home/services/github_service.dart';
import 'package:LyvelyExercise/modules/home/services/github_view_provider.dart';
import 'package:LyvelyExercise/widgets/empty_profile.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:LyvelyExercise/utils/extensions/string_extension.dart';

import '../../../Templates/page_template.dart';
import '../../../Widgets/custom_button.dart';
import '../../../configs/sizes.dart';
import '../../../utils/app_router.dart';
import '../../../utils/providers/utility_providers.dart';
import '../../../utils/styles/text_styles.dart';
import '../../../widgets/placeholder_shimmer.dart';

@RoutePage()
class RepositoryDetailsView extends ConsumerWidget {
  const RepositoryDetailsView({super.key, required this.repo});

  final GitRepository repo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PageTemplate(
      pageTitle: repo.name?.capitalizeFirstOfEach,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              repoHeader(ref),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  repoHeader(WidgetRef ref) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
              decoration: BoxDecoration(color: Colors.blue[100], borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  RepoOwnerInfo(repo: repo),
                  SizedBox(height: 20),
                  RepoInfo(repo: repo),
                  SizedBox(height: 20),
                  CounterWidget(
                      count: ref.watch(formatterProvider).format(repo.stargazers_count ?? 0),
                      title: 'stars',
                      icon: CupertinoIcons.staroflife),
                  SizedBox(height: 10),
                  CounterWidget(
                      count: ref.watch(formatterProvider).format(repo.forks_count ?? 0),
                      title: 'forks',
                      icon: CupertinoIcons.arrow_branch),
                  SizedBox(height: 10),
                  CounterWidget(
                      count: ref.watch(formatterProvider).format(repo.open_issues_count ?? 0),
                      title: 'issues',
                      icon: CupertinoIcons.circle_grid_hex),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
