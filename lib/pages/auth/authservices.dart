import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Authcontroller extends GetxController {
  // instance of auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // firebase signin
  Future<void> siginwithEmailandPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar(
        " successfully  login",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        duration: const Duration(seconds: 3),
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error",
        "fail to sign in $e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        duration: const Duration(seconds: 3),
      );
    }
  }

  // firebase signup
  Future<void> sigupwithEmailandPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.snackbar(
        "user successfully created!",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        duration: const Duration(seconds: 3),
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        "Error",
        "fail to sign up $e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        duration: const Duration(seconds: 3),
      );
    }
  }

  // firebase reset password
  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      Get.snackbar(
        "verification code successfully sent!",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        forwardAnimationCurve: Curves.bounceIn,
        duration: const Duration(seconds: 3),
      );
    } on FirebaseAuthException catch (e) {
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

  // firebase log out
  Future<void> siginOut() async {
    await _auth.signOut();
    Get.snackbar(
      "successfully log out",
      "",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black,
      colorText: Colors.white,
      forwardAnimationCurve: Curves.bounceIn,
      duration: const Duration(seconds: 3),
    );
  }
}
