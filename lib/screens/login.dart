import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback show;
  const LoginScreen(this.show, {super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
          SizedBox(height: 50.h),
          textField(email, "Your Email", false),
          SizedBox(height: 20.h),
          textField(password, "Password", true),
          SizedBox(height: 10.h),
          forgot(),
          SizedBox(height: 20.h),
          buttonLogin(),
          SizedBox(height: 10.h),
          have(context),
        ],
      )),
    );
  }

  Widget have(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dont have an account?',
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 13.sp),
          ),
          SizedBox(width: 4.w),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Color(0xFF235DFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
            ),
          )
        ],
      ),
    );
  }

  Widget buttonLogin() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
            color: Color(0xFF235DFF),
            borderRadius: BorderRadius.circular(15.r)),
        child: Text(
          'Sign In',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        ),
      ),
    );
  }

  Widget forgot() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        "Forgot Password?",
        style: TextStyle(
            color: Color(0xFF235DFF),
            fontWeight: FontWeight.bold,
            fontSize: 13.sp),
      ),
    );
  }

  Widget textField(
      TextEditingController controller, String type, bool obscureType) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
        child: TextField(
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
          controller: controller,
          obscureText: obscureType,
          decoration: InputDecoration(
            hintText: type,
            hintStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
      ),
    );
  }
}
