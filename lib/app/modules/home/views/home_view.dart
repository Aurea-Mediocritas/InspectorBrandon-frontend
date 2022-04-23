import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inspector_brandon_frontend/app/core/const/string.dart';
import 'package:inspector_brandon_frontend/app/core/const/vars.dart';

import '../controllers/home_controller.dart';

import 'package:inspector_brandon_frontend/app/core/const/icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: vMspacing.w),
          child: Text(
            sAppTitle,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .apply(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, vMspacing.w, 0),
            child: IconButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light);
                } else {
                  Get.changeThemeMode(ThemeMode.dark);
                }
              },
              icon: iconLightBulb,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("logo.png"),
            Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                width: 600,
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    hintText: 'Inspect Brand',
                    suffixIcon: iconSearch,
                  ),
                ),
              ),
            ),
            Row(
              children: [],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed('/result'),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: iconBarcode,
                        ),
                        Text('Barcode'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed('/camera'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: iconCamera,
                        ),
                        Text('Camera'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
