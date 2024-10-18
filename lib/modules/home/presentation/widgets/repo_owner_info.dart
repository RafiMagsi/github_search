import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:LyvelyExercise/utils/extensions/string_extension.dart';

import '../../../../configs/sizes.dart';
import '../../../../utils/providers/utility_providers.dart';
import '../../../../utils/styles/button_styles.dart';
import '../../../../utils/styles/text_styles.dart';
import '../../../../widgets/empty_profile.dart';
import '../../../../widgets/placeholder_shimmer.dart';
import '../../../bookmarks/services/bookmarks_view_model.dart';

class RepoOwnerInfo extends ConsumerWidget {
  const RepoOwnerInfo({required this.repo, super.key});

  final GitRepository repo;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
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
        Positioned(
          right: 0,
          child: SizedBox(
            width: 50,
            child: IconButton(
              onPressed: () async {
                await ref.watch(bookmarksNotifierProvider.notifier).saveRepo(repo);
                context.router.maybePop();
              },
              padding: EdgeInsets.zero,
              style: ButtonStyles.elevatedStyle(ref),
              icon: Icon(
                CupertinoIcons.bookmark,
                color: ((repo.bookmarked) || ref.read(bookmarkProvider)) ? Colors.green : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
