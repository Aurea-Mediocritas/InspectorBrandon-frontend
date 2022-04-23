import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inspector_brandon_frontend/app/data/providers/response_model_provider.dart';
import 'package:inspector_brandon_frontend/app/data/response_model_model.dart';

class HomeController extends GetxController {
  RxString inputString = "".obs;
  late ResponseModel responseModel;
  RxBool hasData = false.obs;

  bool hasinputString() {
    return inputString.value.isNotEmpty;
  }

  void getData() async {
    await ResponseModelProvider().getResponseModel(inputString.value).then(
      (response) {
        print(response);
        responseModel = response;
        hasData.value = true;
      },
      onError: (err) {
        Get.dialog(err);
      },
    );
  }
}
