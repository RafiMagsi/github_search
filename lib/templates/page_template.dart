import 'package:flutter/material.dart';

import '../configs/sizes.dart';
import '../widgets/custom_app_bar.dart';

// Generic page template
class PageTemplate extends StatelessWidget {
  final Widget? header;
  final Widget body;
  final Widget? footer;
  final String? pageTitle;
  final bool? rootPage;
  final Widget? titleWidget;
  final double? footerLeft;
  final double? footerRight;
  final BottomNavigationBar? bottomNavigationBar;

  const PageTemplate({
    super.key,
    required this.body,
    this.header,
    this.footer,
    this.pageTitle = "",
    this.rootPage = false,
    this.titleWidget,
    this.footerLeft,
    this.footerRight,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: pageTitle,
        rootPage: rootPage,
        titleWidget: titleWidget,
      ),
      body: Stack(
        children: [
          Column(
            children: [header ?? Container(), Expanded(child: body)],
          ),
          Positioned(
            bottom: AppSizes.large_2,
            left: footerLeft,
            right: footerRight ?? 0,
            child: footer ?? Container(),
          )
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
