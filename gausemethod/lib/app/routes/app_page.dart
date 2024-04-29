import 'package:gausemethod/app/pages/home_page/bindings/home_binding.dart';
import 'package:gausemethod/app/pages/home_page/views/home_view.dart';
import 'package:gausemethod/app/pages/saving_detail_page/bindings/saving_detail_binding.dart';
import 'package:gausemethod/app/pages/saving_detail_page/views/saving_detail_page.dart';
import 'package:get/get.dart';

part 'app_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: _Paths.savingDetail,
      page: () => const SavingDetailView(),
      binding: SavingDetailBinding(),
    ),
  ];
}
