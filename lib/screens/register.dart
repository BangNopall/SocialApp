// ignore_for_file: avoid_print, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp/controller/auth_controller.dart';
import 'package:socialapp/utils/dialog.dart';
import 'package:socialapp/utils/exception.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback show;
  const SignUpScreen(this.show, {super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  final username = TextEditingController();

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
              "Sign up and enjoy our community",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          SizedBox(height: 50.h),
          textField(username, "Username", false),
          SizedBox(height: 20.h),
          textField(email, "Your Email", false),
          SizedBox(height: 20.h),
          textField(password, "Password", true),
          SizedBox(height: 20.h),
          textField(confirmpassword, "Confirm Password", true),
          SizedBox(height: 20.h),
          buttonSignup(),
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
            'Already Have an Account?',
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 13.sp),
          ),
          SizedBox(width: 4.w),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Color(0xFF235DFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonSignup() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: InkWell(
        onTap: () async {
          try {
            await Authtentication().register(
                username: username.text,
                email: email.text,
                password: password.text,
                confirmpassword: confirmpassword.text);
          } on exceptions catch (e) {
            dialogBuilder(context, e.message);
          }
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 44.h,
          decoration: BoxDecoration(
              color: Color(0xFF235DFF),
              borderRadius: BorderRadius.circular(15.r)),
          child: Text(
            'Sign Up',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.sp),
          ),
        ),
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
