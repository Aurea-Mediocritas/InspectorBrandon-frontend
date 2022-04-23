import 'package:get/get.dart';

import '../response_model_model.dart';

class ResponseModelProvider extends GetConnect {
  Future<ResponseModel> getResponseModel(String querry) async {
    final response = await get(
        "https://aurea-be-nfduyeicqq-lz.a.run.app/brand_rating?q=$querry");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return ResponseModel.fromJson(response.body);
    }
  }
}
