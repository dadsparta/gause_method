import 'package:flutter/cupertino.dart';
import 'package:gausemethod/app/pages/onboarding/onboarding_controller/onboarding_controller.dart';
import 'package:gausemethod/core/consts/app_colors.dart';
import 'package:gausemethod/core/consts/texts.dart';
import 'package:gausemethod/core/extensions/asset_extension.dart';
import 'package:gausemethod/core/extensions/int_extension.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.firstColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 0),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Image.asset('pig'.pngIcon),
              AppText.onboardingTitle('Have you always wanted to save money?'),
              25.height,
              CupertinoButton(
                color: AppColors.buttonsColor,
                  child: AppText.titleGoalTileDetail('Let\'s start'),
                  onPressed: () {
                  controller.goToHome();
                  }),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
