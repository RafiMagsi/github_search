import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../modules/home/data/git_model.dart';
import '../modules/home/presentation/widgets/git_item_widget.dart';

class AppShimmers {
  static Shimmer repositoryShimmer() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(height: 200, child: GitItemWidget(repo: GitRepository())),
    );
  }
}
