import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/sign_in_page_controller.dart';

class SignInPageView extends GetView<SignInPageController> {
  const SignInPageView({Key? key}) : super(key: key);
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
                TextFormField(
                  controller: controller.passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                FilledButton.tonal(
                  onPressed: controller.signin,
                  child: const Text("Sign In"),
                ),
                TextButton(
                  onPressed: () {
                    Get.offAllNamed(Routes.SIGN_UP_PAGE);
                  },
                  child: const Text("Sign Up"),
                ),
                TextButton(
                  onPressed: () {
                    Get.offAllNamed(
                      Routes.FORGET_PASSWORD_PAGE,
                      arguments: controller.emailController.text,
                    );
                  },
                  child: const Text("Forget Password"),
                ),
              ],
            ),
          ),
        ));
  }
}
