import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tute/firebase_options.dart';
import 'package:flutter_tute/pages/auth/authgate.dart';
import 'package:flutter_tute/pages/auth/login_or_registerpage.dart';
import 'package:flutter_tute/pages/forgetpassword.dart';
import 'package:flutter_tute/pages/homepage.dart';
import 'package:flutter_tute/pages/loginpage.dart';
import 'package:flutter_tute/pages/registerpage.dart';
import 'package:flutter_tute/pages/widgetute.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/",
      // routes: {
      //   "/forgetpassword": (context) => forgetPassword(),
      //   "/userpage": (context) => userpage(),
      // },
      home: widgetute(),
    );
  }
}
