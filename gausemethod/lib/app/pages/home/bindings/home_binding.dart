
import 'package:gausemethod/app/pages/home/controllers/home_controller.dart';
import 'package:gausemethod/app/pages/home/tabs/main_page/controllers/main_page_controller.dart';
import 'package:gausemethod/app/pages/home/tabs/settings/controllers/settings_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeBindings extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(
        () => HomeController(),
      ),
      Bind.lazyPut(
        () => MainPageController(),
      ),
      Bind.lazyPut(
        () => SettingsController(),
      ),
    ];
  }
}
