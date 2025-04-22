import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/widgets/CustomTextFilde.dart';

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
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
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
                    _buildSocialIcon(const Icon(
                        FontAwesomeIcons.google)), // replace with your icons
                    const SizedBox(width: 20),
                    _buildSocialIcon(const Icon(FontAwesomeIcons.facebook)),
                    const SizedBox(width: 20),
                    _buildSocialIcon(const Icon(FontAwesomeIcons.apple)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(Widget assetPath) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: assetPath,
    );
  }
}
