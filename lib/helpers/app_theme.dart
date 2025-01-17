import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../configs/colors.dart';
import '../configs/sizes.dart';
import '../utils/styles/text_styles.dart';

class AppTheme {
  // Theme Data Light
  static ThemeData lightTheme() {
    return ThemeData(
      shadowColor: Colors.grey.withOpacity(0.15),
      textTheme: TextTheme(
        bodyMedium: AppStyles.titleStyle(color: AppColors.textColor).copyWith(fontSize: 14),
        titleMedium: AppStyles.titleStyle(),
        titleSmall: AppStyles.subTitleStyle(),
      ),
      dividerColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.primary,
      dividerTheme: DividerThemeData(
        color: Colors.grey[200],
      ),
      primaryColor: AppColors.buttonColor,
      brightness: Brightness.light,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.buttonColor,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: AppColors.white,
      cardColor: Colors.white,
      iconTheme: const IconThemeData(
        color: AppColors.textColor,
        size: 25,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false, // 1
        titleTextStyle: AppStyles.titleStyle(color: AppColors.textColor).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(
          color: AppColors.textColor,
          size: 22,
        ),
        actionsIconTheme: IconThemeData(
          color: AppColors.textColor,
          size: 22,
        ),
        color: AppColors.primary,
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.buttonColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: AppStyles.hintStyle().copyWith(height: 1),
        labelStyle: AppStyles.titleStyle(color: AppColors.textColorD),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        disabledBorder: InputBorder.none,
      ),
    );
  }

// Theme data Dark
  static ThemeData darkTheme() {
    return ThemeData(
      shadowColor: Colors.grey.withOpacity(0.025),
      textTheme: TextTheme(
        bodyMedium: AppStyles.titleStyle(color: AppColors.textColorD).copyWith(fontSize: 14),
        titleMedium: AppStyles.titleStyle(color: AppColors.textColorD),
        titleSmall: AppStyles.subTitleStyle(color: AppColors.textSubtitleD),
      ),
      dividerColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.primaryD,
      dividerTheme: DividerThemeData(
        color: Colors.grey[200],
      ),
      primaryColor: AppColors.buttonColor,
      brightness: Brightness.dark,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.buttonColor,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: AppColors.primaryD,
      cardColor: Colors.black,
      iconTheme: const IconThemeData(
        color: AppColors.white,
        size: 25,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false, // 1
        titleTextStyle: AppStyles.titleStyle(color: AppColors.textColorD).copyWith(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: AppColors.textColorD,
          size: 22,
        ),
        actionsIconTheme: IconThemeData(
          color: AppColors.textColorD,
          size: 22,
        ),
        color: AppColors.primaryD,
        elevation: 0, systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.buttonColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        hintStyle: AppStyles.hintStyle(color: AppColors.textSubtitleD).copyWith(height: 1),
        labelStyle: AppStyles.titleStyle(color: AppColors.textColorD),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        fillColor: Colors.black,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSizes.large_2)),
          borderSide: BorderSide.none,
        ),
        disabledBorder: InputBorder.none,
      ),
    );
  }
}
