import 'package:flutter/material.dart';

import '../configs/sizes.dart';
import '../widgets/custom_app_bar.dart';

// Generic page template
class PageTemplate extends StatelessWidget {
  final Widget? header;
  final Widget? body;
  final Widget? footer;
  final String? pageTitle;
  final bool? rootPage;

  const PageTemplate({Key? key, this.body, this.header, this.footer, this.pageTitle = "", this.rootPage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: pageTitle, rootPage: rootPage),
      body: Stack(
        children: [
          Column(
            children: [header ?? Container(), Expanded(child: body!)],
          ),
          Positioned(
            bottom: AppSizes.large_2,
            left: 0,
            right: 0,
            child: footer ?? Container(),
          )
        ],
      ),
    );
  }
}
