import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inspector_brandon_frontend/app/core/theme/theme.dart';
import 'package:inspector_brandon_frontend/app/widgets/animatedscore.dart';
import 'package:inspector_brandon_frontend/app/widgets/stars.dart';

import '../controllers/result_controller.dart';

import 'package:inspector_brandon_frontend/app/core/const/icons.dart';

class ResultView extends GetView<ResultController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: iconBack,
          onPressed: () => Get.back(),
        ),
        title: Text('Brand'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Brand Name",
                    style: TextStyle(fontSize: 56),
                  ),
                  Stars(
                    points: 50,
                  ),
                ],
              ),
            ),
            AnimatedScore(
              points: 78,
              str: "General Score",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedScore(
                  points: 93,
                  str: "Carbon Score",
                ),
                AnimatedScore(
                  points: 35,
                  str: "Clarity Score",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
