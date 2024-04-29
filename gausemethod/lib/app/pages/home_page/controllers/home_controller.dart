import 'package:flutter/material.dart';
import 'package:gausemethod/app/pages/home_page/tabs/main_page/views/main_page_view.dart';
import 'package:gausemethod/app/pages/home_page/tabs/settings/views/settings_view.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController();
  final List pages = [MainPageView(), SettingsView()];
  final RxInt selectedPageIndex = 0.obs;

  void onSelectPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
    );
  }
}
