import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/widgets/CustomButtom.dart';
import 'package:zad/widgets/CustomTextFilde.dart';
import 'package:zad/widgets/SocialMediaIcon.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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

              // Name Field
              const CustomTextField(
                label: 'Name',
                hintText: 'Enter your Name',
                prefixIcon: Icons.person_outline,
              ),
              const SizedBox(height: 20),

              // Email Field
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

              // Confirm Password Field
              const CustomTextField(
                label: 'Confirm Password',
                hintText: '************',
                prefixIcon: Icons.lock_outline,
                obscureText: true,
                suffixIcon: Icon(Icons.visibility_outlined),
              ),

              const SizedBox(height: 10),

              // Terms and Conditions
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    overlayColor: const MaterialStatePropertyAll(Colors.grey),
                  ),
                  const Text(
                    'I accept the terms and conditions',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              // Register Button
              CustomButton(
                text: "Register",
                backgroundColor: const Color(0xFF68AD80),
                textColor: Colors.white,
                onPressed: () {},
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
