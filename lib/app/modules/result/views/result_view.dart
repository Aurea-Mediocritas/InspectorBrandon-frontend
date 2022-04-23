import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
            Column(
              children: [
                Text("InspektorBrandon"),
                Row(
                  children: [
                    iconFullStar,
                    iconFullStar,
                    iconFullStar,
                    iconFullStar,
                    iconFullStar,
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
