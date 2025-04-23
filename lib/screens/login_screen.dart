import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';
import 'package:zad/widgets/SocialMediaIcon.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  'lib/images/logo.png', // replace with your actual asset path
                  height: 120,
                ),
                const SizedBox(height: 40),

                const CustomTextField(
                  label: 'Email',
                  hintText: 'Enter your Email Or Number',
                  prefixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),

                // Password Field
                const CustomTextField(
                  label: 'Password',
                  hintText: '************',
                  prefixIcon: Icons.lock_outline,
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility_outlined),
                ),

                const SizedBox(height: 10),

                // Remember Me and Forget Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          overlayColor:
                              const MaterialStatePropertyAll(Colors.grey),
                        ),
                        const Text(
                          'Remember Me',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forget password',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: CustomButton(
                    text: 'Login',
                    onPressed: () {},
                    backgroundColor: const Color(0xFF4CAF50),
                    textColor: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                // Sign up link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You don't have account "),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // OR Divider
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
                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
