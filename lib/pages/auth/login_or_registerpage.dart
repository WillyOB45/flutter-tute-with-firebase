import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/loginpage.dart';
import 'package:flutter_tute/pages/registerpage.dart';

class loginorRegister extends StatefulWidget {
  const loginorRegister({super.key});

  @override
  State<loginorRegister> createState() => _loginorRegisterState();
}

class _loginorRegisterState extends State<loginorRegister> {
  // initialize showpage
  bool showpage = false;

  // toggles betwwen login or register pages

  void _togglespages() {
    setState(() {
      showpage = !showpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showpage) {
      return loginPage(
        onTap: _togglespages,
      );
    } else {
      return registerpage(
        onPressed: _togglespages,
      );
    }
  }
}
