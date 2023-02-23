import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SpalshPageController extends GetxController {
  @override
  void onReady() {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.SIGN_IN_PAGE);
    }
    super.onReady();
  }
}
