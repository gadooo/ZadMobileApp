import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zad/Services/LoginApi.dart';
import 'package:zad/screens/HomePage.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void login() async {
      final loginResponse = await AuthService.login(
        username: emailController.text, // حسب كلامك Username في API
        password: passwordController.text,
      );

      if (loginResponse != null) {
        // print('Login Successful: Token => ${loginResponse.token}');
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', loginResponse.token!);
        print(prefs.getString('token'));

        // TODO: Save token (مثل SharedPreferences أو Secure Storage)

        // التوجه إلى الصفحة الرئيسية بعد تسجيل الدخول الناجح
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else {
        print('Login Failed');
        // TODO: Show error (مثل عرض رسالة أو Snackbar)
      }
    }

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
              CustomTextField(
                hintText: 'Enter your Email or Number',
                prefixIcon: Icons.email,
                controller: emailController,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Password',
                prefixIcon: Icons.lock,
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: go to Forget Password page
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
                      // TODO: go to SignUp Page
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
                    onPressed: () {
                      // TODO: Google Sign-In
                    },
                    icon: const Icon(Icons.g_mobiledata, size: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO: Facebook Sign-In
                    },
                    icon: const Icon(Icons.facebook, size: 40),
                  ),
                  IconButton(
                    onPressed: () {
                      // TODO: Apple Sign-In
                    },
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
