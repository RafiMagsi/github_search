import 'package:flutter/material.dart';

import '../configs/colors.dart';
import '../configs/sizes.dart';

class EmptyProfile extends StatelessWidget {
  const EmptyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return emptyProfile();
  }

  Container emptyProfile() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.small_3),
      ),
      child: Icon(
        Icons.person,
        size: 100,
        color: AppColors.subText,
      ),
    );
  }
}
