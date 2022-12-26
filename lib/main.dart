import 'dart:io';

import 'package:al_right_flutter/AppLayer/Overseer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:al_right_flutter/AppLayer/Provider.dart' as pro;
import 'App_View/Home_Screen/home_screen.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 1000),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return pro.Provider(
          data: Overseer(),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Railway',
            home: child,
          ),
        );
      },
      child: Home(),
    );
  }
}
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
      (X509Certificate cert, String host, int port)=> true;
  }
}