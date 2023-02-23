// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ForgetPasswordPageController extends GetxController {
  final emailController = TextEditingController();

  @override
  void onInit() {
    emailController.text = (Get.arguments as String?) ?? '';
    super.onInit();
  }

  Future<void> forgetPassword() async {
    try {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
        barrierDismissible: false,
      );
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text,
      );
      Get.back();
      Get.toNamed(Routes.SIGN_IN_PAGE, arguments: emailController.text);
    } on FirebaseAuthException catch (e) {
      Get.back();
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      Get.back();
    }
  }
}
