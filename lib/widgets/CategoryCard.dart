// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomCategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final VoidCallback? onTap;

  const CustomCategoryCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.backgroundColor = const Color(0xFFF5F5F5),
    this.textColor = Colors.grey,
    this.width = 120,
    this.height = 140,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.5,
                height: width * 0.5,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
