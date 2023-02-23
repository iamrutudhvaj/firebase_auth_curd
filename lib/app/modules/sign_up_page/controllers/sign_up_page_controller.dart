// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignUpPageController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signup() async {
    try {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
        barrierDismissible: false,
      );
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // Create a new user with a first and last name
      final user = <String, dynamic>{
        "email": emailController.text,
        "password": passwordController.text,
        "uid": credential.user?.uid,
      };

      // Add a new document with a generated ID
      await FirebaseFirestore.instance.collection("user").add(user).then(
          (DocumentReference doc) =>
              print('DocumentSnapshot added with ID: ${doc.id}'));

      Get.back();
      Get.offAllNamed(Routes.HOME);
      ScaffoldMessenger.of(Get.context!).showSnackBar(
          const SnackBar(content: Text("User Created Successfully")));
    } on FirebaseAuthException catch (e) {
      Get.back();
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      Get.back();
      print(e);
    }
  }
}
