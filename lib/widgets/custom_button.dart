import 'package:flutter/material.dart';

import '../configs/colors.dart';
import '../configs/sizes.dart';
import '../utils/styles/text_styles.dart';

// Button customized to use for different purposes
class CustomButton extends StatelessWidget {
  final String? title;
  final Function? onTap;
  final bool? enabled;
  const CustomButton({
    super.key,
    this.title = "",
    this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.small_3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: enabled! ? AppColors.buttonColor : AppColors.buttonColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(AppSizes.large_2),
          boxShadow: AppStyles.boxShadow(),
        ),
        child: Text(
          title!,
          style: AppStyles.titleStyle(color: AppColors.white, height: 1),
        ),
      ),
      onPressed: () {
        onTap?.call();
      },
    );
  }
}
