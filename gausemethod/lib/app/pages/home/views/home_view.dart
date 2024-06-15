import 'package:flutter/material.dart';
import 'package:gausemethod/app/pages/home/controllers/home_controller.dart';
import 'package:gausemethod/core/consts/app_colors.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: controller.pages.length,
              controller: controller.pageController,
              physics: const ScrollPhysics(),
              onPageChanged: (value) =>
                  controller.selectedPageIndex.value = value,
              itemBuilder: (context, index) {
                return controller.pages[index];
              },
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Obx(
                  () => ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: BottomNavigationBar(
                      onTap: controller.onSelectPage,
                      currentIndex: controller.selectedPageIndex.value,
                      showUnselectedLabels: false,
                      showSelectedLabels: false,
                      backgroundColor: AppColors.scaffoldColor,
                      selectedItemColor: AppColors.textInButtonsColor,
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.rule),
                          label: 'Desires',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.settings),
                          label: 'Time',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
