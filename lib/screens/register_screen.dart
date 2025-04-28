import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/Services/AuthApi.dart';
import 'package:zad/screens/login_screen.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';
import 'package:zad/widgets/SocialMediaIcon.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key}) {
    //
  }

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneNumberlController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  String? errorMessage;
  void register() async {
    try {
      final success = await AuthService.register(
        username: nameController.text,
        email: phoneNumberlController.text,
        password: passwordController.text,
      );

      if (success) {
        // بعد التسجيل الناجح ممكن توديه صفحة تسجيل الدخول
        if (!mounted) return;
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      }
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        // errorMessage = 'Registration failed. Please try again.';
      });
      print(e.toString());

      // ignore: use_build_context_synchronously
      Future.delayed(const Duration(seconds: 4), () {
        setState(() {
          errorMessage = null; // إخفاء رسالة الخطأ بعد ثانيتين
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const SizedBox(height: 40),
              Image.asset(
                'lib/images/logo.png', // replace with your actual asset path
                height: 120,
              ),
              const SizedBox(height: 40),

              // Error Message
              if (errorMessage != null) // إظهار رسالة الخطأ إذا موجودة
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              // Name Field
              CustomTextField(
                labelText: 'Name',
                controller: nameController,
                hintText: 'inter the name',
              ),
              const SizedBox(height: 20),

              // Email Field
              CustomTextField(
                hintText: 'inter the phone number',
                controller: phoneNumberlController,
                labelText: 'Phone Number',
              ),
              const SizedBox(height: 20),

              // Password Field
              CustomTextField(
                hintText: 'inter the password',
                obscureText: true,
                controller: passwordController,
                labelText: 'Password',
              ),

              const SizedBox(height: 10),

              // Confirm Password Field
              CustomTextField(
                hintText: 'confirm the password',
                obscureText: true,
                controller: passwordController,
                labelText: 'Confirm Password',
              ),

              const SizedBox(height: 10),

              // Terms and Conditions
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    overlayColor: const WidgetStatePropertyAll(Colors.grey),
                  ),
                  const Text(
                    'I accept the terms and conditions',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              // Register Button
              CustomButton(
                text: 'Register',
                onPressed: register,
              ),

              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 20),

              // Social Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIconButton(
                    icon: const Icon(FontAwesomeIcons.google),
                    onTap: () {},
                  ), // replace with your icons
                  const SizedBox(width: 20),
                  SocialIconButton(
                    icon: const Icon(FontAwesomeIcons.facebook),
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  SocialIconButton(
                    icon: const Icon(FontAwesomeIcons.apple),
                    onTap: () {},
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
