// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/forget_password_page/bindings/forget_password_page_binding.dart';
import '../modules/forget_password_page/views/forget_password_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/sign_in_page/bindings/sign_in_page_binding.dart';
import '../modules/sign_in_page/views/sign_in_page_view.dart';
import '../modules/sign_up_page/bindings/sign_up_page_binding.dart';
import '../modules/sign_up_page/views/sign_up_page_view.dart';
import '../modules/spalsh_page/bindings/spalsh_page_binding.dart';
import '../modules/spalsh_page/views/spalsh_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPALSH_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_PAGE,
      page: () => const SignUpPageView(),
      binding: SignUpPageBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN_PAGE,
      page: () => const SignInPageView(),
      binding: SignInPageBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD_PAGE,
      page: () => const ForgetPasswordPageView(),
      binding: ForgetPasswordPageBinding(),
    ),
    GetPage(
      name: _Paths.SPALSH_PAGE,
      page: () => const SpalshPageView(),
      binding: SpalshPageBinding(),
    ),
  ];
}
