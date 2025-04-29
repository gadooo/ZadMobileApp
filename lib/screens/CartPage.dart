// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:zad/widgets/CartItme.dart';

import 'package:zad/widgets/CustomAppBar.dart';
import 'package:zad/widgets/SearchBar.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SearchBarWidget(
              themsColor: Color(0xff68AD80),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  Cartitme(
                      name: "tomto",
                      description: "fresh tomto",
                      imageUrl: "lib/images/tom.png",
                      price: 2.5),
                  Cartitme(
                      name: "tomto",
                      description: "fresh tomto",
                      imageUrl: "lib/images/tom.png",
                      price: 2.5),
                  Cartitme(
                      name: "tomto",
                      description: "fresh tomto",
                      imageUrl: "lib/images/tom.png",
                      price: 2.5),
                  Cartitme(
                      name: "tomto",
                      description: "fresh tomto",
                      imageUrl: "lib/images/tom.png",
                      price: 2.5),
                  Cartitme(
                      name: "tomto",
                      description: "fresh tomto",
                      imageUrl: "lib/images/tom.png",
                      price: 2.5),
                  Cartitme(
                      name: "tomto",
                      description: "fresh tomto",
                      imageUrl: "lib/images/tom.png",
                      price: 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
