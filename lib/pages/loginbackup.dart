import 'package:flutter/material.dart';
import 'package:socialapp/components/button.dart';
import 'package:socialapp/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SocialApp",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF235DFF)),
                ),
                SizedBox(height: 50),
                Text(
                  "Hello! Welcome to SocialApp",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 50),
                MyTextField(
                    controller: emailTextController,
                    hintText: "Your email",
                    obscureText: false),
                SizedBox(height: 20),
                MyTextField(
                    controller: passwordTextController,
                    hintText: "Password",
                    obscureText: true),
                SizedBox(height: 20),
                MyButton(onTap: () {}, text: 'Sign In'),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(color: Colors.grey[700])),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF235DFF)),
                      ),
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
