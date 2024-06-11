import 'package:flutter/cupertino.dart';
import 'package:gausemethod/app/collection.dart';
import 'package:gausemethod/app/global_widgets/savings_tile.dart';
import 'package:gausemethod/app/pages/home/tabs/main_page/controllers/main_page_controller.dart';
import 'package:gausemethod/core/consts/app_colors.dart';
import 'package:gausemethod/core/consts/texts.dart';
import 'package:get/get.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
      color: AppColors.firstColor,
      child: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            AppText.title('Main'),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SavingsTile(
                    titleOfGoal: CollectionS.savings[index].titleOfGoal,
                    imageURL: CollectionS.savings[index].imageURL,
                    amountOfSaving: CollectionS.savings[index].amountOfSaving,
                    finalSavingAmount:
                        CollectionS.savings[index].finalSavingAmount);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: CollectionS.savings.length,
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
