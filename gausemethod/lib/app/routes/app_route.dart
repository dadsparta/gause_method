
part of 'app_page.dart';

abstract class _Paths{
  _Paths._();
  static const home = '/home';
  static const onboarding = '/onboarding';
  static const savingDetail = '/savingDetailPage';
}

abstract class Routes{
  Routes._();
  static const home = _Paths.home;
  static const onboarding = _Paths.onboarding;
  static const savingDetail = _Paths.savingDetail;
}