import 'dart:math';

import 'package:flutter/material.dart';

class cardTile extends StatelessWidget {
  const cardTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 200,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade900,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Visa Platinum",
            style: TextStyle(
                color: Colors.white,
                fontSize: (20),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset(
                "assets/chiplogo.png",
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 15,
              ),
              Transform.rotate(
                angle: pi / 3,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.wifi,
                  size: (15),
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          const Row(
            children: [
              Text(
                "4000",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (20),
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
