import 'package:gausemethod/app/pages/onboarding/onboarding_controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(
        () => OnboardingController(),
      ),
    ];
  }
}
