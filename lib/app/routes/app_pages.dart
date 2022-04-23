import 'package:get/get.dart';

import '../modules/barcode/bindings/barcode_binding.dart';
import '../modules/barcode/views/barcode_view.dart';
import '../modules/camerapage/bindings/camerapage_binding.dart';
import '../modules/camerapage/views/camerapage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => ResultView(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: _Paths.BARCODE,
      page: () => BarcodeView(),
      binding: BarcodeBinding(),
    ),
    GetPage(
      name: _Paths.CAMERAPAGE,
      page: () => CamerapageView(),
      binding: CamerapageBinding(),
    ),
  ];
}
