import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/widgetute.dart';

class userpage extends StatelessWidget {
  final Picdetails;
  const userpage({super.key, required this.Picdetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Center(
            child: Image.asset(
              Picdetails.urlname,
              height: 500,
              width: 300,
              color: Picdetails.colorname,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(Picdetails.picsname)
        ],
      ),
    );
  }
}
