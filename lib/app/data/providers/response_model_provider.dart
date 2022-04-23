import 'package:get/get.dart';

import '../response_model_model.dart';

class ResponseModelProvider extends GetConnect {
  Future<ResponseModel> getResponseModel(String querry) async {
    print("$querry xd");
    final response = await get('https://aurea-be-nfduyeicqq-lz.a.run.app');
    print(response.statusCode);
    print(response.body);
    print(ResponseModel.fromJson(response.body));
    return ResponseModel.fromJson(response.body);
  }
}
