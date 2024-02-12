import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gausemethod/app/pages/home_page/controllers/home_controller.dart';
import 'package:gausemethod/generated/locales.g.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          LocaleKeys.be.tr,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
