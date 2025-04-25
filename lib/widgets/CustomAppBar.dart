import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget? leading;
  final VoidCallback? onMenuTap;

  const CustomAppBar({
    Key? key,
    this.height = kToolbarHeight,
    this.leading,
    this.onMenuTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: height,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 👇 use leading if provided, else use default logo
          leading ??
              Image.asset(
                'lib/images/logo.png',
                height: 35,
                width: 35,
              ),
          IconButton(
            onPressed: onMenuTap ?? () {},
            icon: const Icon(FontAwesomeIcons.bars),
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
