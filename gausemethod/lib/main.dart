import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gausemethod/app/routes/app_page.dart';
import 'package:gausemethod/core/consts/theme.dart';
import 'package:gausemethod/generated/locales.g.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    GetMaterialApp(
      title: "GauseMethod",
      getPages: AppPages.routes,
      locale: Locale('en'),
      translationsKeys: AppTranslation.translations,
      defaultTransition: Transition.cupertino,
      initialRoute: Routes.home,
      builder: (context, page) => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        },
        child: page ?? const SizedBox.shrink(),
      ),
      theme: themeData,
      debugShowCheckedModeBanner: false,
    ),
  );
}

