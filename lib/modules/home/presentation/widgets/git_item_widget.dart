import 'package:LyvelyExercise/utils/app_router.dart';
import 'package:LyvelyExercise/utils/providers/utility_providers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:LyvelyExercise/utils/extensions/string_extension.dart';

import '../../../../configs/colors.dart';
import '../../../../configs/sizes.dart';
import '../../../../utils/styles/text_styles.dart';
import '../../../../widgets/empty_profile.dart';
import '../../../../widgets/placeholder_shimmer.dart';
import '../../data/git_model.dart';
import '../../services/github_view_provider.dart';

class GitItemWidget extends StatelessWidget {
  const GitItemWidget({required this.repo, super.key});

  final GitRepository repo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer(builder: (context, ref, widget) {
        return InkWell(
          onTap: () {
            if (repo.name != null) {
              context.router.push(RepositoryDetailsRoute(repo: repo));
            }
            // ref.context.pushNamed(Routes.repoDetails, extra: repo);
          },
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                decoration:
                    BoxDecoration(boxShadow: AppStyles.boxShadow2(), borderRadius: const BorderRadius.all(Radius.circular(8))),
                height: 300,
                width: ref.watch(sizeProvider(ref.context)).width * 0.9,
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(AppSizes.small_2),
                  child: CachedNetworkImage(
                    imageUrl: repo.owner?.avatar_url ?? '',
                    fit: BoxFit.cover,
                    placeholder: (_, __) => PlaceholderShimmer(),
                    errorWidget: (context, url, error) => EmptyProfile(),
                  ),
                ),
              ),
              Positioned.fill(
                bottom: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 22),
                      decoration:
                          BoxDecoration(color: Colors.blue[100], borderRadius: const BorderRadius.all(Radius.circular(8))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: ref.watch(sizeProvider(ref.context)).width * 0.8,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    '${repo.name?.capitalizeFirstOfEach}',
                                    style: AppStyles.titleStyle(),
                                    maxLines: 10,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.star_border_purple500_sharp, color: AppColors.notification),
                              Text(
                                ref.watch(formatterProvider).format(repo.stargazers_count ?? 0).toString(),
                                style: AppStyles.subTitleStyle(color: AppColors.primaryD).copyWith(fontSize: 16),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
