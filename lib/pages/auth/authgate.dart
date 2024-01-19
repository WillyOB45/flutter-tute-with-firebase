import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_tute/pages/auth/login_or_registerpage.dart';
import 'package:flutter_tute/pages/homepage.dart';

class authgate extends StatelessWidget {
  const authgate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return const homepage();
          }
          // user not login
          else {
            return const loginorRegister();
          }
        },
      ),
    );
  }
}
