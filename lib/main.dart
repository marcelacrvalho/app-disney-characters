import 'package:disney/app/modules/bindings/home_bindings.dart';
import 'package:disney/app/routes/app_routes.dart';
import 'package:disney/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_views.dart';

void main() async {
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(seconds: 0),
      title: 'Minha Disney',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      initialRoute: Routes.kHome,
      getPages: AppPages.routes,
      initialBinding: HomeBinding(),
    ),
  );
}