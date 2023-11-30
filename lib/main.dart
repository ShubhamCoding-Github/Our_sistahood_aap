import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:our_sistahood_app/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GestureDetector(
              onTap: () {
                if (FocusManager.instance.primaryFocus!.hasFocus) {
                  FocusManager.instance.primaryFocus!.unfocus();
                }
              },
              child: const GetMaterialApp(
                  title: 'Our_Sistahood_app',
                  debugShowCheckedModeBanner: false,
                  home: Splashscreen()));

        });

  }
}
