import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            // first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // circle avatar
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/man.png",
                  ),
                ),
                Text(
                  "Card Management",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: (20),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey.shade600),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              "assets/—Pngtree—bank card black card_5907506.png",
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
