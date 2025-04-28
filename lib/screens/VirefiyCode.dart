// ignore: file_names
import 'package:flutter/material.dart';
import 'package:zad/screens/login_screen.dart';
import 'package:zad/widgets/CustomButtom.dart';

import '../widgets/VirefiyCodeWidget.dart';

class VirefiyCode extends StatefulWidget {
  const VirefiyCode({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VirefiyCodeState createState() => _VirefiyCodeState();
}

class _VirefiyCodeState extends State<VirefiyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Image.asset("lib/images/virefiyCode.png", width: 200, height: 200),
          const SizedBox(height: 20),
          const Text("Enter the verification code sent to your email",
              style: TextStyle(fontFamily: "Roboto Flex")),
          const SizedBox(height: 89),
          OtpInput(),
          const SizedBox(height: 45),
          CustomButton(
            // have to navigate to change password page
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            text: "Confirm",
          ),
        ])));
  }
}
