import 'package:flutter/cupertino.dart';
import 'package:gausemethod/app/global_widgets/savings_tile.dart';
import 'package:gausemethod/app/pages/home_page/tabs/main_page/controllers/main_page_controller.dart';
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
            const SavingsTile(
              titleOfGoal: 'Санкт-Питербург',
              progressOfSavings: 0.44,
              imageURL: 'https://yarreg.ru/gallery/news/2021/09/260483/13.jpeg',
            ),
            const SavingsTile(
              titleOfGoal: 'Ноутбук',
              progressOfSavings: 0.05,
              imageURL:
                  'https://content2.onliner.by/catalog/device/main/9b2fde508e9cc2a0e82d9e7534572d76.jpeg',
            ),
            const SavingsTile(
              titleOfGoal: 'Игрушка',
              progressOfSavings: 0,
              imageURL:
                  'https://zoo1.by/image/cache/catalog/tovar/2108/831172cd04f69e8cdc1fc29d2ea5e52331391477-800x800.jpg',
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
