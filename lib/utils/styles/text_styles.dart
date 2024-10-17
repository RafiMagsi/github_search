import 'package:flutter/material.dart';

import '../../configs/colors.dart';

class AppStyles {
  // Box Shadow for container
  static List<BoxShadow> boxShadow() {
    return [
      const BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        spreadRadius: 4,
      )
    ];
  }

  // Input field error text style
  static TextStyle errorTextStyle() {
    return const TextStyle(
      color: AppColors.error,
      fontSize: 14,
      letterSpacing: 0.03,
      height: 0.8,
    );
  }

  // Title or heading text style
  static TextStyle titleStyle({
    Color color = AppColors.textColor,
    double height = 1.5,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      height: height,
    );
  }

//Sub title style
  static TextStyle subTitleStyle({
    Color color = AppColors.textSubtitle,
    double height = 1.5,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: height,
    );
  }

//Price text style
  static TextStyle priceStyle({
    Color color = AppColors.buttonColor,
    double height = 1.5,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: height,
    );
  }

  // Input field hint text style
  static TextStyle hintStyle({
    Color color = AppColors.hintColor,
  }) {
    return const TextStyle(
      color: AppColors.textSubtitle,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.03,
    );
  }
}
