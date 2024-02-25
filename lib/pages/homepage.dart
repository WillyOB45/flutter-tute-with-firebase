import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/auth/authservices.dart';
import 'package:flutter_tute/pages/util/card_tile.dart';
import 'package:get/get.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final Authcontroller _authcontroller = Get.put(Authcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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

                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade600),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: (25),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "chuks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (25),
                            // fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const cardTile(),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade500),
                          child: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade500),
                          child: const Icon(
                            Icons.archive_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade500),
                          child: const Icon(
                            Icons.swap_horiz,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white),
                              // borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade500),
                          child: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "send",
                          style: TextStyle(color: Colors.white, fontSize: (17)),
                        ),
                        Text(
                          "receive",
                          style: TextStyle(color: Colors.white, fontSize: (17)),
                        ),
                        Text(
                          "swap",
                          style: TextStyle(color: Colors.white, fontSize: (17)),
                        ),
                        Text(
                          "freeze",
                          style: TextStyle(color: Colors.white, fontSize: (17)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey.shade300,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        "Transactions",
                        style: TextStyle(
                            color: Colors.grey.shade800, fontSize: (25)),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade500),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                  color: Colors.white, fontSize: (15)),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () => _authcontroller.siginOut(),
                    icon: Icon(Icons.logout)),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50,
                        width: 50,
                        color: Colors.amber,
                      );
                    },
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
