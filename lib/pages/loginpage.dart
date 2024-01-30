import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/util/my_button.dart';
import 'package:flutter_tute/pages/util/my_textfield.dart';
import 'package:flutter_tute/pages/util/squaretile.dart';

class loginPage extends StatefulWidget {
  void Function()? onPressed;
  loginPage({super.key, required this.onPressed});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  //sigin method
  Future sigin() async {
    // loading circle

    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailcontroller.text.trim(),
          password: _passwordcontroller.text.trim());
    } on FirebaseException catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: AlertDialog(
                backgroundColor: Colors.grey,
                title: Text(
                  "user not found",
                  style: TextStyle(color: Colors.white),
                )),
          );
        },
      );
    }

    // pop circle
    Navigator.pop(context);
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
                "welcome! you have be missed",
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
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.popAndPushNamed(context, "/forgetpassword");
                    });
                  },
                  child: Text(
                    "Forget password?",
                    style:
                        TextStyle(fontSize: (17), color: Colors.grey.shade500),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              //my button
              GestureDetector(onTap: sigin, child: my_button(title: "Log in")),

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
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style:
                        TextStyle(color: Colors.grey.shade900, fontSize: (15)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextButton(
                    onPressed: widget.onPressed,
                    child: Text(
                      "Register here",
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
