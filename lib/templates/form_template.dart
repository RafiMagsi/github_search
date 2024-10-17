import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../configs/sizes.dart';

final formProvider = StateProvider<GlobalKey>((ref) {
  return productForm;
});
var productForm = GlobalKey<FormState>();

class FormTemplate extends ConsumerWidget {
  final GlobalKey<FormState>? formKey;
  final List<Widget>? formFields;
  final Widget? submitButton;

  const FormTemplate({
    Key? key,
    this.formKey,
    this.formFields,
    this.submitButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: ref.watch(formProvider),
      child: Column(
        children: [
          const SizedBox(height: AppSizes.large_1),
          Column(children: formFields?.toList() ?? [Container()]),
          const SizedBox(height: AppSizes.large_1),
          submitButton ?? Container(),
        ],
      ),
    );
  }
}
