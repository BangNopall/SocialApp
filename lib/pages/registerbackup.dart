import 'package:flutter/material.dart';
import 'package:socialapp/components/button.dart';
import 'package:socialapp/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final comfirmPasswordTextController = TextEditingController();

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
                  "Sign up and enjoy our community",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 50),
                MyTextField(
                    controller: usernameTextController,
                    hintText: "username",
                    obscureText: false),
                SizedBox(height: 20),
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
                MyTextField(
                    controller: comfirmPasswordTextController,
                    hintText: "Confirm Password",
                    obscureText: true),
                SizedBox(height: 20),
                MyButton(onTap: () {}, text: 'Sign Up'),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alredy have and account?",
                        style: TextStyle(color: Colors.grey[700])),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Sign In',
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
