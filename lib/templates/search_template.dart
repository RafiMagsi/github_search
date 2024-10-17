import 'package:flutter/material.dart';
import '../configs/sizes.dart';
import '../widgets/custom_text_field.dart';

// Search text field, we can add search criteria in onChange event
class SearchTemplate extends StatelessWidget {
  final String? Function(String)? onChange;
  final TextEditingController? controller;

  const SearchTemplate({
    super.key,
    this.onChange,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.small_3),
      child: CustomTextField(
        placeHolder: "Search",
        inputController: controller,
        autoValidate: false,
        onChanged: onChange,
      ),
    );
  }
}
