// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomCategoryTab extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final String imagePath;
  final double width;
  final double height;

  const CustomCategoryTab({
    super.key,
    required this.label,
    required this.imagePath,
    this.labelColor = Colors.white,
    this.backgroundColor = Colors.black,
    this.width = 140,
    this.height = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        // border: Border(right: BorderSide(color: backgroundColor)),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          // Left Side: Label
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            width: width / 2,
            decoration: BoxDecoration(
              border: const Border(left: BorderSide(color: Colors.white24)),
              color: backgroundColor,
              borderRadius:
                  const BorderRadius.horizontal(left: Radius.circular(12)),
            ),
            alignment: Alignment.center,
            child: Text(
              label,
              style: TextStyle(
                color: labelColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // Right Side: Image
          Container(
            width: width / 2,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(12)),
            ),
            padding: const EdgeInsets.all(4),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
