import 'package:flutter/material.dart';

class squareTile extends StatelessWidget {
  final String imagepath;
  const squareTile({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Image.asset(imagepath),
    );
  }
}
