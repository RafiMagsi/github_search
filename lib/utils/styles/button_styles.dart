import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/utility_providers.dart';

class ButtonStyles {
  static elevatedStyle(WidgetRef ref) {
    return ElevatedButton.styleFrom(
        backgroundColor: Colors.white60,
        minimumSize: Size(ref.watch(sizeProvider(ref.context)).width, 44),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))));
  }
}
