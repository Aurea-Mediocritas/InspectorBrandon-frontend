import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inspector_brandon_frontend/app/widgets/cameraWidget.dart';

import '../controllers/camerapage_controller.dart';

class CamerapageView extends GetView<CamerapageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CamerapageView'),
        centerTitle: true,
      ),
      body: Center(
          //child: CameraWidget(),
          ),
    );
  }
}
