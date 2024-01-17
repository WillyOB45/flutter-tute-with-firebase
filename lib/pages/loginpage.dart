import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/util/aquaretitiles.dart';
import 'package:flutter_tute/pages/util/my_button.dart';
import 'package:flutter_tute/pages/util/my_textfield.dart';

// ignore: camel_case_types
class loginPage extends StatefulWidget {
  void Function()? onTap;

  loginPage({super.key, required this.onTap});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailcontroller = TextEditingController();

  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),

              //message icon
              const Icon(
                Icons.lock_person_sharp,
                size: (70),
                color: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),

              //welcome message
              const Text(
                "welcome! you are be missed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: (25)),
              ),
              const SizedBox(
                height: 30,
              ),

              //email textfield
              my_textfield(
                  controller: _emailcontroller,
                  hintText: "type in your Email",
                  obscureText: false),

              const SizedBox(
                height: 10,
              ),

              //password textfield
              my_textfield(
                  controller: _passwordcontroller,
                  hintText: "type in your password",
                  obscureText: true),

              const SizedBox(
                height: 10,
              ),

              Container(
                alignment: Alignment.centerRight,
                child: const Text(
                  "forget password?",
                  style: TextStyle(fontSize: (17)),
                  textAlign: TextAlign.right,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //my button
              GestureDetector(onTap: () {}, child: my_button(title: "Log in")),

              const SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.grey.shade400,
                  )),
                  Text(
                    "or continue with",
                    style:
                        TextStyle(color: Colors.grey.shade900, fontSize: (16)),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.grey.shade400,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // google and apple account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  squaretile(
                    imagepath: "assets/google.png",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  squaretile(
                    imagepath: "assets/applelogo.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have an account?",
                    style:
                        TextStyle(color: Colors.grey.shade900, fontSize: (15)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "register here",
                      style: TextStyle(
                          color: Colors.grey.shade500, fontSize: (15)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
