import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/auth/authservices.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // sign out method
  void _signout() {
    // get authservices
    final _auth = AuthServices();
    _auth.signout();
  }

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
                        const Text(
                          "Card Management",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: (20),
                              fontWeight: FontWeight.bold),
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
                      height: 50,
                    ),
                    Container(
                      height: 200,
                      width: 500,
                      color: Colors.grey.shade900,
                    ),
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
            color: Colors.grey.shade400,
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
                IconButton(onPressed: _signout, icon: Icon(Icons.logout))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
