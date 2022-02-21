import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dating/config/app_theme.dart';
import 'package:dating/config/size_config.dart';
import 'package:dating/constant/app_constant.dart';
import 'package:dating/screen/home_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppConstants.APP_NAME,
          theme: appTheme(),
          home: const HomeScreen(),
        );
      });
    });
  }
}
