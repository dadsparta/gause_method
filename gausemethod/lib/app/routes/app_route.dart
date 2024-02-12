
part of 'app_page.dart';

abstract class _Paths{
  _Paths._();
  static const home = '/home';
  static const mainPage = '/main-page';
}

abstract class Routes{
  Routes._();
  static const mainPage = _Paths.mainPage;
  static const home = _Paths.home;
}