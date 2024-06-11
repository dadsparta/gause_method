import 'package:gausemethod/app/pages/saving_detail/controllers/saving_detail_controller.dart';
import 'package:get/get.dart';

class SavingDetailBinding extends Binding{
  @override
  List<Bind> dependencies() {
    return[
      Bind.lazyPut(() => SavingDetailController()),
    ];
  }
}