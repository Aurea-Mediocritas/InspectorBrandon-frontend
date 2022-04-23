import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inspector_brandon_frontend/app/widgets/barcodescanner.dart';

import '../controllers/barcode_controller.dart';

class BarcodeView extends GetView<BarcodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarcodeView'),
        centerTitle: true,
      ),
      body: Center(
        child: BarcodeWidget(),
      ),
    );
  }
}
