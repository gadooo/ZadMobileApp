import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zad/Models/ProductModel.dart';

class ProductCard extends StatelessWidget {
  final String unit;
  final String imagePath;
  final String title;
  final double price;
  final VoidCallback onPressed;

  const ProductCard({
    super.key,
    required this.unit,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.memory(base64Decode(imagePath),
                height: 100, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: Theme.of(context).textTheme.bodyLarge),
            ),
            Text('$price $unit', style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
