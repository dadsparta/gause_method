import 'package:flutter/material.dart';
import 'package:gausemethod/app/pages/home/tabs/main_page/views/main_page_view.dart';
import 'package:gausemethod/app/pages/home/tabs/settings/views/settings_view.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {

  @override
  void onInit() {

    super.onInit();
  }
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
