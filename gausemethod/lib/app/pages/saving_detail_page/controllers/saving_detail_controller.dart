import 'package:get/get.dart';

class SavingDetailController extends GetxController{
  late final Map<String, dynamic> args;

  late final String imageURL;
  late final String title;
  late final double value;

  @override
  void onInit() {
    super.onInit();
    args = Get.arguments;
    imageURL = args['imageURL'];
    title = args['title'];
    value = args['value'];
  }

}