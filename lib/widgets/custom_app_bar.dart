import 'package:flutter/material.dart';

// Custom AppBar class
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title; // Title of the AppBar
  final bool? rootPage; // For checking if its root page then don't show back button
  final Widget? titleWidget;
  const CustomAppBar({Key? key, this.title, this.rootPage = false, this.titleWidget}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height); // Default size of AppBar

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          leading: !rootPage!
              ? IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                )
              : null,
          title: titleWidget ?? Text(title ?? ""),
          centerTitle: true,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
        ));
  }
}
