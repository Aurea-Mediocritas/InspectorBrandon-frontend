import 'package:get/get.dart';

import '../controllers/camerapage_controller.dart';

class CamerapageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CamerapageController>(
      () => CamerapageController(),
    );
  }
}
