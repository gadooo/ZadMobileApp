import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/screens/login_screen.dart';
import 'package:zad/widgets/ConfirmWidget.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("lib/images/cahgePassword.png",
                width: 200, height: 200),
            const SizedBox(height: 20),
            const Text("Change your password and confirm it"),
            const SizedBox(height: 45),
            CustomTextField(
                sufix: const Icon(FontAwesomeIcons.eye),
                labelText: "New Password  ",
                hintText: "********",
                controller: TextEditingController()),
            const SizedBox(height: 15),
            CustomTextField(
                sufix: const Icon(FontAwesomeIcons.eye),
                labelText: "Confirm Password",
                hintText: "********",
                controller: TextEditingController()),
            const SizedBox(height: 45),
            CustomButton(
              text: "Confirm",
              onPressed: () {
                // هنا ممكن تضيف كود تغيير كلمة المرور
                // بعد التغيير الناجح، اعرض الديالوق
                showConfirmedDialog(context);
              },
            )
          ],
        )),
      ),
    );
  }

  void showConfirmedDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // يمنع الإغلاق بالضغط خارج الديالوق
      builder: (context) {
        Future.delayed(const Duration(seconds: 2), () {
          if (context.mounted) {
            Navigator.of(context).pop();
            // هنا كمان ممكن تمشي صفحة تسجيل الدخول
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => LoginPage()));
          }
        });

        return const Dialog(
          backgroundColor: Colors.transparent, // خلفية شفافة
          elevation: 0, // بدون ظل
          insetPadding: EdgeInsets.zero, // بدون مسافات حول الديالوق
          child: ConfirmedWidget(), // هنا تعرض الودجت
        );
      },
    );
  }
}
