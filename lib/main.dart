import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:inspector_brandon_frontend/app/core/const/string.dart';
import 'package:inspector_brandon_frontend/app/core/theme/theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: () => GetMaterialApp(
        theme: lightTheme,
        darkTheme: darkTheme,
        defaultTransition: Transition.fade,
        debugShowCheckedModeBanner: false,
        title: sAppTitle,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
