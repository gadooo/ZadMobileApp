// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  final double size;
  final double padding;
  final double borderRadius;
  final Color borderColor;
  final Color? backgroundColor;
  final BoxShadow? boxShadow;

  const SocialIconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = 50,
    this.padding = 10,
    this.borderRadius = 12,
    this.borderColor = const Color(0xFFDDDDDD),
    this.backgroundColor,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.transparent,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: boxShadow != null ? [boxShadow!] : null,
        ),
        child: icon,
      ),
    );
  }
}
