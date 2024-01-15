import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.message,
              size: (70),
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "welcome! you have been missed.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: (40),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
