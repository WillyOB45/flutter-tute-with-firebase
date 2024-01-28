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
                fontSize: (25),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                "assets/chiplogo.png",
                height: 50,
                width: 50,
              ),
              const SizedBox(
                width: 15,
              ),
              Transform.rotate(
                angle: pi / 2,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.wifi,
                  size: (25),
                  color: Colors.white,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "4000",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (25),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "xxxx",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (25),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "2395",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (25),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "xxxx",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: (25),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "E. chukwuka",
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: (20),
                ),
              ),
              Expanded(
                child: Image.asset(
                  "assets/visalogo.png",
                  height: 30,
                  width: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
