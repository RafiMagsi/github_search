import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:LyvelyExercise/modules/home/presentation/widgets/counter_widget.dart';
import 'package:LyvelyExercise/modules/home/services/github_service.dart';
import 'package:LyvelyExercise/modules/home/services/github_view_provider.dart';
import 'package:LyvelyExercise/widgets/empty_profile.dart';
import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:LyvelyExercise/utils/extensions/string_extension.dart';

import '../../../Templates/page_template.dart';
import '../../../Widgets/custom_button.dart';
import '../../../configs/sizes.dart';
import '../../../utils/providers/utility_providers.dart';
import '../../../utils/styles/text_styles.dart';
import '../../../widgets/placeholder_shimmer.dart';

@RoutePage()
class RepositoryDetailsView extends ConsumerWidget {
  const RepositoryDetailsView({super.key, required this.repo});

  final GitRepository repo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiService = ref.watch(gitApiServiceProvider);

    return PageTemplate(
      pageTitle: "Repository Details",
      body: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              repoHeader(ref),
              const SizedBox(height: 20),
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child) {
                  return CustomButton(
                      title: "Star",
                      // Changes the color of the button depending on the status of validation of text fields
                      onTap: () async {
                        await ref.watch(githubNotifierProvider(apiService).notifier).bookmark(repo);
                        // ref.context.pop();
                      });
                },
              ),
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(AppSizes.small_2),
                        ),
                        width: AppSizes.icon2,
                        height: AppSizes.icon2,
                        child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(AppSizes.icon),
                          child: CachedNetworkImage(
                            imageUrl: repo.owner?.avatar_url ?? '',
                            fit: BoxFit.fill,
                            placeholder: (_, __) => PlaceholderShimmer(),
                            errorWidget: (context, url, error) => EmptyProfile(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: ref.watch(sizeProvider(ref.context)).width * 0.6,
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                '${repo.owner?.login?.capitalizeFirstOfEach}',
                                style: AppStyles.titleStyle(),
                                maxLines: 10,
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            '${repo.name?.capitalizeFirstOfEach}',
                            style: AppStyles.titleStyle().copyWith(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: ref.watch(sizeProvider(ref.context)).width * 0.8,
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            '${repo.description?.capitalizeFirstOfEach}',
                            style: AppStyles.titleStyle(),
                          ),
                        ),
                      ],
                    ),
                  ),
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
