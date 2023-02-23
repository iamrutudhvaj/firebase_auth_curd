import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_password_page_controller.dart';

class ForgetPasswordPageView extends GetView<ForgetPasswordPageController> {
  const ForgetPasswordPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Firebase Sign In'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
               
                const SizedBox(
                  height: 16,
                ),
                FilledButton.tonal(
                  onPressed: controller.forgetPassword,
                  child: const Text("Send Email"),
                ),
              ],
            ),
          ),
        ));
  }
}
