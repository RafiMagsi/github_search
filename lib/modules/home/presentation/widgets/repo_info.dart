import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:LyvelyExercise/utils/extensions/string_extension.dart';

import '../../../../utils/providers/utility_providers.dart';
import '../../../../utils/styles/text_styles.dart';

class RepoInfo extends ConsumerWidget {
  const RepoInfo({required this.repo, super.key});
  final GitRepository repo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
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
      ],
    );
  }
}
