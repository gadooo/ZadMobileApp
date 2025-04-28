import 'package:flutter/material.dart';
import 'package:zad/screens/VirefiyCodePage.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('lib/images/forgetPassword.png',
                  width: 200, height: 200),
              const SizedBox(height: 20),
              const Text(
                "Enter your email to get Verification code",
                style: TextStyle(fontFamily: "Roboto Flex"),
              ),
              SizedBox(height: 89),
              CustomTextField(
                  labelText: "Email",
                  hintText: "Enter your Email or phone numer ",
                  controller: TextEditingController()),
              SizedBox(height: 45),
              CustomButton(
                  text: "Send",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VirefiyCode()));
                  })
            ]),
      ),
    );
  }
}
