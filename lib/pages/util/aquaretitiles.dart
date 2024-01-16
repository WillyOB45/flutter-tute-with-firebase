import 'package:flutter/material.dart';

class squaretile extends StatelessWidget {
  final String imagepath;
  squaretile({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Image.asset(imagepath),
    );
  }
}
