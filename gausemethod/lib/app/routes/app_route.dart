
part of 'app_page.dart';

abstract class _Paths{
  _Paths._();
  static const home = '/home';
  static const main = '/main-page';
  static const savingDetail = '/savingDetailPage';
}

abstract class Routes{
  Routes._();
  static const main = _Paths.main;
  static const home = _Paths.home;
  static const savingDetail = _Paths.savingDetail;
}