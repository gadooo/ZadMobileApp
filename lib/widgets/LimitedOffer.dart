import 'package:flutter/material.dart';

class LimitedOfferCard extends StatelessWidget {
  const LimitedOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 89,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 247, 157, 74),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8))),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Limited Offer",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontFamily: "Roboto serif",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Get 20% Off Our Fresh",
                        style: TextStyle(
                            color: Colors.white, fontFamily: "Roboto serif"),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 89,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  border: Border(
                    bottom: BorderSide(color: Color(0xffFF8515)),
                    left: BorderSide(color: Color(0xffFF8515)),
                    right: BorderSide(color: Color(0xffFF8515)),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Fruits Basket",
                        style: TextStyle(color: Color(0xffFF8515)),
                      ),
                      SizedBox(width: 65)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 39,
                            decoration: BoxDecoration(
                                color: const Color(0xFF68AD80),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "Get the offer",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      const SizedBox(
                        width: 30,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Image.asset(
            'lib/images/offer.png',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
            alignment: Alignment.centerRight,
          ),
        )
      ],
    );
  }
}
