import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../configs/colors.dart';
import '../../../../utils/styles/text_styles.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({required this.count, required this.title, required this.icon, super.key});

  final String count;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Icon(icon, color: AppColors.notification),
        SizedBox(width: 10),
        Text(
          count,
          style: AppStyles.subTitleStyle(color: AppColors.primaryD).copyWith(fontSize: 16),
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: AppStyles.titleStyle(color: AppColors.subText),
        ),
      ],
    );
  }
}
