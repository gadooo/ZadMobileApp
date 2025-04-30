import 'package:flutter/material.dart';
import 'package:zad/Models/CategoryModel.dart';
import 'package:zad/Services/CategoryApi.dart';
import 'package:zad/widgets/CategoryCard.dart';
import 'package:zad/widgets/CustomAppBar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late Future<List<Category>> _futureCategories;

  @override
  void initState() {
    super.initState();
    _futureCategories = ApiServiceCategory.fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Icon(Icons.arrow_back_ios_new),
        leading: Container(
          padding: const EdgeInsets.only(right: 12),
          child: const Icon(Icons.menu),
        ),
      ),
      body: FutureBuilder<List<Category>>(
        future: _futureCategories,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('خطأ: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('لا توجد بيانات'));
          }

          final categories = snapshot.data!;
          return GridView.builder(
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];

              return CustomCategoryCard(
                title: category.name,
                imagePath: category.imagePath,
              );
            },
          );
        },
      ),
    );
  }
}
