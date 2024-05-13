import 'package:flutter/material.dart';
import 'package:gausemethod/app/pages/saving_detail_page/controllers/saving_detail_controller.dart';
import 'package:gausemethod/core/consts/app_colors.dart';
import 'package:gausemethod/core/consts/texts.dart';
import 'package:get/get.dart';

class SavingDetailView extends GetView<SavingDetailController> {
  const SavingDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image.network(
                  controller.imageURL,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AppText.titleGoalTileDetail(controller.title),
                  ),
                  Expanded(
                    flex: 1,
                    child: AppText.percentageTile(
                        '${(controller.value).toInt()}%/100%'),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                value: controller.value,
                color: AppColors.progressIndicatorColor,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 100,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        decoration: BoxDecoration(color: AppColors.buttonsColor,borderRadius: BorderRadius.all(Radius.circular(20),),),
                        child: Center(child: Text((index + 1).toString())),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
