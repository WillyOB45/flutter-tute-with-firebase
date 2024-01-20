import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tute/firebase_options.dart';
import 'package:flutter_tute/pages/auth/login_or_registerpage.dart';
import 'package:flutter_tute/pages/homepage.dart';
import 'package:flutter_tute/pages/loginpage.dart';
import 'package:flutter_tute/pages/registerpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.grey));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginorRegister(),
    );
  }
}
