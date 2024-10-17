import 'package:LyvelyExercise/utils/providers/utility_providers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../configs/colors.dart';
import '../../../configs/sizes.dart';
import '../../../utils/styles/text_styles.dart';
import '../../../widgets/placeholder_shimmer.dart';
import '../data/git_model.dart';

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
            // ref.context.pushNamed(Routes.repoDetails, extra: repo);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(color: Colors.grey[300], borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: [
                SizedBox(
                  width: 88,
                  height: 88,
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(AppSizes.small_2),
                    child: CachedNetworkImage(
                      imageUrl: repo.owner?.avatarUrl ?? '',
                      fit: BoxFit.cover,
                      placeholder: (_, __) => PlaceholderShimmer(),
                      errorWidget: (context, url, error) => emptyProfile(),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: ref.watch(sizeProvider(ref.context)).width * 0.6,
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Owner: ${repo.name}',
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
                        Icon(Icons.star_border_purple500_sharp, color: AppColors.textColorD),
                        Text(
                          (repo.stargazersCount ?? 0).toString(),
                          style: AppStyles.subTitleStyle(),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Container emptyProfile() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.small_3),
      ),
      child: Icon(
        Icons.person,
        size: 34,
        color: AppColors.subText,
      ),
    );
  }
}
