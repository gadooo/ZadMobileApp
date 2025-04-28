// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget? leading;
  final VoidCallback? onMenuTap;
  final Widget? icon;

  const CustomAppBar({
    super.key,
    this.height = kToolbarHeight,
    this.leading,
    this.onMenuTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: height,
      title: Image.asset(
        'lib/images/logo.png',
        height: 35,
        width: 35,
      ),
      leading: leading,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
