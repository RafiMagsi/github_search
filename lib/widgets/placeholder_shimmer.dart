import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PlaceholderShimmer extends StatelessWidget {
  const PlaceholderShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
