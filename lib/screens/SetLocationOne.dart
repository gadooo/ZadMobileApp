// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:zad/screens/HomePage.dart';
import 'package:zad/widgets/CustomAppBar.dart';
import 'package:zad/widgets/CustomButtom.dart';

class SetLocationOne extends StatefulWidget {
  // ignore: use_super_parameters
  const SetLocationOne({Key? key}) : super(key: key);

  @override
  _SetLocationOneState createState() => _SetLocationOneState();
}

class _SetLocationOneState extends State<SetLocationOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset("lib/images/location.png",
                    width: 200, height: 200)),
            const SizedBox(height: 30),
            const Text(
              "Allow Location Access",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5F5E5E),
                  fontSize: 16),
            ),
            const Text(
              "Enable location to find nearby stores, deliver faster, and show you the best offers around you!",
              style: TextStyle(color: Color(0xff5F5E5E)),
            ),
            const SizedBox(height: 89),
            CustomButton(
                text: "Send my location",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }),
            const SizedBox(height: 16),
            CustomButton(
              textColor: const Color(0xff68AD80),
              color: const Color(0xffAAEAC7),
              text: "send anther location",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
