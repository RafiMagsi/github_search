import 'dart:async';
import 'dart:developer';

import 'package:LyvelyExercise/configs/strings.dart';
import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:LyvelyExercise/modules/home/presentation/git_item_widget.dart';
import 'package:LyvelyExercise/modules/home/services/github_service.dart';
import 'package:LyvelyExercise/templates/page_template.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../../templates/search_template.dart';
import '../../../utils/api_service.dart';
import '../services/github_view_provider.dart';

const int pageSize = 10;

@RoutePage()
class HomeView extends ConsumerStatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    final apiService = ref.watch(gitApiServiceProvider);
    return PageTemplate(
      titleWidget: SearchTemplate(
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
      ),
      rootPage: true,
      pageTitle: AppStrings.appName,
      body: RefreshIndicator(
        onRefresh: () => ref.watch(githubNotifierProvider(apiService).notifier).refresh(),
        child: repoList(ref, apiService),
      ),
    );
  }

  Column repoList(WidgetRef ref, ApiService apiService) {
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

              log('index: $index, page: $page, indexInPage: $indexInPage');

              return repositories.when(
                data: (repoList) {
                  if (indexInPage >= repoList.items.length) {
                    return null;
                  }
                  return GitItemWidget(repo: repoList.items.elementAt(indexInPage));
                },
                error: (err, stack) =>
                    indexInPage == 0 ? GitItemWidget(repo: GitRepository(name: err.toString())) : const SizedBox.shrink(),
                loading: () {
                  return notificationShimmer();
                },
              );
            },
          ),
        )
      ],
    );
  }

  Shimmer notificationShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GitItemWidget(repo: GitRepository()),
    );
  }
}
