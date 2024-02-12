import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/auth/authservices.dart';
import 'package:flutter_tute/pages/util/my_textfield.dart';
import 'package:get/get.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  final TextEditingController _emailcontroller = TextEditingController();

  final Authcontroller _authcontroller = Get.put(Authcontroller());

  //reset password
  _firebaseResetpassword() async {
    try {
      await _authcontroller.resetPassword(_emailcontroller.text.trim());
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
      backgroundColor: Colors.grey.shade400,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "forget your password! Enter email",
                style: TextStyle(color: Colors.white, fontSize: (30)),
              ),
              const SizedBox(
                height: 20,
              ),
              my_textfield(
                  controller: _emailcontroller,
                  hintText: "type in your Email",
                  obscureText: false),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _firebaseResetpassword();
                  });
                },
                color: Colors.grey.shade900,
                child: const Text(
                  "Enter",
                  style: TextStyle(color: Colors.white, fontSize: (15)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
