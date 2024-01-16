import 'package:flutter/material.dart';

class my_textfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  const my_textfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: Colors.white,
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.grey.shade300,
        )),
        filled: true,
      ),
    );
  }
}
