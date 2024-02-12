import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/auth/authservices.dart';
import 'package:flutter_tute/pages/util/my_button.dart';
import 'package:flutter_tute/pages/util/my_textfield.dart';
import 'package:flutter_tute/pages/util/squaretile.dart';
import 'package:get/get.dart';

class registerpage extends StatefulWidget {
  void Function()? onPressed;
  registerpage({super.key, required this.onPressed});

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final Authcontroller _authcontroller = Get.put(Authcontroller());

  _signup() async {
    try {
      if (_passwordcontroller.text.trim() ==
          _confirmpasswordcontroller.text.trim()) {
        return null;
      } else if (_passwordcontroller.text.trim() !=
          _confirmpasswordcontroller.text.trim()) {
        return Get.snackbar(
          "invaild password",
          "please, confirm password",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          colorText: Colors.white,
          forwardAnimationCurve: Curves.bounceIn,
          duration: const Duration(seconds: 3),
        );
      }

      await _authcontroller.sigupwithEmailandPassword(
          _emailcontroller.text.trim(), _passwordcontroller.text.trim());
    } catch (e) {
      Get.snackbar(
        "$e",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        duration: const Duration(seconds: 3),
      );
    }
  }

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
                "let's create an account for you!",
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

              //confirm password textfield
              my_textfield(
                  controller: _confirmpasswordcontroller,
                  hintText: "confirm password",
                  obscureText: true),

              const SizedBox(
                height: 10,
              ),

              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget password?",
                  style: TextStyle(fontSize: (17), color: Colors.grey.shade500),
                  textAlign: TextAlign.right,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //my button
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _signup();
                    });
                  },
                  child: my_button(title: "register")),

              const SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.grey.shade500,
                  )),
                  Text(
                    "or continue with",
                    style:
                        TextStyle(color: Colors.grey.shade900, fontSize: (20)),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.grey.shade500,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // google and apple account
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  squareTile(
                    imagepath: "assets/google.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  squareTile(
                    imagepath: "assets/applelogo.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style:
                        TextStyle(color: Colors.grey.shade900, fontSize: (15)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: widget.onPressed,
                    child: Text(
                      "login here",
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
