import 'package:get/get.dart';

import '../controllers/spalsh_page_controller.dart';

class SpalshPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SpalshPageController>(SpalshPageController());
  }
}
