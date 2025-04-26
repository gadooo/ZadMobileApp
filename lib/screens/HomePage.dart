import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/widgets/CategoryTab.dart';
import 'package:zad/widgets/LimitedOffer.dart';
import 'package:zad/widgets/ProductCard.dart';
import 'package:zad/widgets/SearchBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'lib/images/logo.png',
                        height: 35,
                        width: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.bars))
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchBarWidget(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: LimitedOfferCard(),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomCategoryTab(
                      label: 'Fruits',
                      imagePath: 'lib/images/fruits.png',
                      backgroundColor: Colors.white,
                      labelColor: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCategoryTab(
                      label: "oli",
                      imagePath: 'lib/images/oil.png',
                      labelColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCategoryTab(
                      label: "vegetables",
                      imagePath: 'lib/images/vegetables.png',
                      labelColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCategoryTab(
                      label: "meats",
                      imagePath: 'lib/images/meat.png',
                      labelColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCategoryTab(
                      label: "cooksipices",
                      imagePath: 'lib/images/coockspices.png',
                      labelColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Most-selling",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 15.0, // shadow blur
                              color: Color.fromARGB(
                                  117, 170, 169, 169), // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                          fontFamily: "Roboto Flex",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/meat.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/oil.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/fruits.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Fruits",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 15.0, // shadow blur
                              color: Color.fromARGB(
                                  117, 170, 169, 169), // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                          fontFamily: "Roboto Flex",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("🍎",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Vegetables",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 15.0, // shadow blur
                              color: Color.fromARGB(
                                  117, 170, 169, 169), // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                          fontFamily: "Roboto Flex",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("🥬",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Milk and Dairy",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 15.0, // shadow blur
                              color: Color.fromARGB(
                                  117, 170, 169, 169), // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                          fontFamily: "Roboto Flex",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("🥛",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Olis",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 15.0, // shadow blur
                              color: Color.fromARGB(
                                  117, 170, 169, 169), // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                          fontFamily: "Roboto Flex",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("🧃",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Meats",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 15.0, // shadow blur
                              color: Color.fromARGB(
                                  117, 170, 169, 169), // shadow color
                              offset: Offset(
                                  2.0, 2.0), // how much shadow will be shown
                            ),
                          ],
                          fontFamily: "Roboto Flex",
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text("🍖",
                        style: TextStyle(
                          fontSize: 20,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductCard(
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                        unit: 'Kg',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                        unit: 'Kg',
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      ProductCard(
                        unit: 'Kg',
                        imagePath: 'lib/images/vegetables.png',
                        title: 'Fresh Vegetables',
                        price: 18,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
