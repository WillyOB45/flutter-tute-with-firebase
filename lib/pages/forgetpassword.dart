import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/util/my_textfield.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  final TextEditingController _emailcontroller = TextEditingController();

  //reset password

  Future resetPassowrd() async {
    //loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailcontroller.text.trim());
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // show message
      return showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Email sent successfully"),
          );
        },
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
                onPressed: resetPassowrd,
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
