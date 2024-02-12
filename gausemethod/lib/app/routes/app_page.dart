import 'package:gausemethod/app/pages/home_page/bindings/home_binding.dart';
import 'package:gausemethod/app/pages/home_page/views/home_view.dart';
import 'package:get/get.dart';

part 'app_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
  ];
}
