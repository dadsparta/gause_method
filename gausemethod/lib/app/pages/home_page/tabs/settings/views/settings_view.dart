import 'package:flutter/cupertino.dart';
import 'package:gausemethod/app/pages/home_page/tabs/settings/controllers/settings_controller.dart';
import 'package:gausemethod/core/consts/app_colors.dart';
import 'package:gausemethod/core/consts/texts.dart';
import 'package:get/get.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.firstColor,
      child: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20,),
            AppText.title('Settings'),
          ],
        ),
      ),
    );
  }
}
