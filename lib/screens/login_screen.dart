import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zad/Services/AuthApi.dart';
import 'package:zad/screens/ForgetPassword.dart';
import 'package:zad/screens/HomePage.dart';
import 'package:zad/screens/register_screen.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  String? errorMessage; // متغير لتخزين رسالة الخطأ

  void login() async {
    try {
      final loginResponse = await AuthService.login(
        username: emailController.text, // حسب كلامك Username في API
        password: passwordController.text,
      );

      if (loginResponse != null) {
        // print('Login Successful: Token => ${loginResponse.token}');
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginResponse.token);

        // التوجه إلى الصفحة الرئيسية بعد تسجيل الدخول الناجح
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    } catch (e) {
      // تحديث رسالة الخطأ
      setState(() {
        errorMessage = e.toString();
        // تحديث رسالة الخطأ
      });
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/logo.png', // غير اللوقو هنا حسب صورتك
                height: 120,
              ),
              const SizedBox(height: 40),
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
              CustomTextField(
                labelText: "name",
                hintText: 'Enter your Email or Number',
                controller: emailController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                labelText: "password",
                hintText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgetPassword(),
                      ),
                    );
                  },
                  child: const Text(
                    'Forget password',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Log in',
                onPressed: login,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: const Text('Sign up'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook, size: 40),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.apple, size: 40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
