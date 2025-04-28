// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:zad/widgets/CategoryCard.dart';
import 'package:zad/widgets/CategoryTab.dart';
import 'package:zad/widgets/CustomAppBar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: GridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: const EdgeInsets.all(8),
        crossAxisCount: 2,
        children: const [
          CustomCategoryCard(
            title: 'Vegetables',
            imagePath: 'lib/images/vegetables.png',
          ),
          CustomCategoryCard(
            title: 'Vegetables',
            imagePath: 'lib/images/vegetables.png',
          ),
          CustomCategoryCard(
            title: 'Vegetables',
            imagePath: 'lib/images/vegetables.png',
          ),
          CustomCategoryCard(
            title: 'Vegetables',
            imagePath: 'lib/images/vegetables.png',
          ),
          CustomCategoryCard(
            title: 'Vegetables',
            imagePath: 'lib/images/vegetables.png',
          ),
          CustomCategoryCard(
            title: 'Vegetables',
            imagePath: 'lib/images/vegetables.png',
          ),
        ],
      ),
    );
  }
}
