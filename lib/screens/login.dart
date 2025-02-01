import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode emailFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 100.h, width: 96.w),
          Center(
            child: Text(
              "SocialApp",
              style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF235DFF)),
            ),
          ),
          SizedBox(height: 50.h),
          Center(
            child: Text(
              "Hello! Welcome to SocialApp",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          SizedBox(height: 120.h),
          Container(
            height: 44.h,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: TextField(
                style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                controller: email,
                focusNode: emailFocus,
                decoration: InputDecoration(
                  hintText: "Your email",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
