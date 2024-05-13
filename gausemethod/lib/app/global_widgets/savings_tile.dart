import 'package:flutter/material.dart';
import 'package:gausemethod/app/routes/app_page.dart';
import 'package:gausemethod/core/consts/app_colors.dart';
import 'package:gausemethod/core/consts/texts.dart';
import 'package:get/get.dart';

class SavingsTile extends StatelessWidget {
  final double amountOfSaving;

  final double finalSavingAmount;
  late double progressOfSavings;
  final String imageURL;
  final String titleOfGoal;

  SavingsTile({
    super.key,
    required this.titleOfGoal,
    required this.imageURL,
    required this.amountOfSaving,
    required this.finalSavingAmount,
  }){
    calculatePercentage();
  }

  void goToDetailPage(String imageURL, double value, String title) {
    Get.toNamed(Routes.savingDetail, arguments: {
      'imageURL': imageURL,
      'value': value,
      'title': title,
    });
  }

  void calculatePercentage() {
    progressOfSavings = 100 * amountOfSaving / finalSavingAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () => goToDetailPage(
          imageURL,
          progressOfSavings,
          titleOfGoal,
        ),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AppText.titleGoalTile(titleOfGoal),
                  ),
                  Expanded(
                    flex: 1,
                    child: AppText.percentageTile(
                        '${(progressOfSavings).toInt()}%/100%'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: LinearProgressIndicator(
                value: progressOfSavings /
                    100,
                color: AppColors.progressIndicatorColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
