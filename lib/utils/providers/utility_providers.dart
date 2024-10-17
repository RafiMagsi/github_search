import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Size provider can used later for Responsive and adaptive designs
final sizeProvider = StateProvider.family<Size, BuildContext>((ref, context) {
  return MediaQuery.of(context).size;
});
