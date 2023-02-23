import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/spalsh_page_controller.dart';

class SpalshPageView extends GetView<SpalshPageController> {
  const SpalshPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpalshPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SpalshPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
