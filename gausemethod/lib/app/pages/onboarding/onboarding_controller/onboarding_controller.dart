import 'package:gausemethod/app/data/utils/appstorage.dart';
import 'package:gausemethod/app/routes/app_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController{
  GetStorage constStorage = GetStorage();

  void goToHome(){
    disableOnboarding();
    Get.offNamed(Routes.home);
  }

  void disableOnboarding(){
    getxStorage.write('isFirstStart', false);
    print('Onboarding was disabled');
  }

}