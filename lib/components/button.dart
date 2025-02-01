import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF235DFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      )),
    );
  }
}
