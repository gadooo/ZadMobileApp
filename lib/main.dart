import 'package:flutter/material.dart';
import 'package:zad/screens/HomePage.dart';
import 'package:zad/screens/register_screen.dart';
import 'package:zad/widgets/ProductCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zad",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: HomePage()),
      ),
    );
  }
}
