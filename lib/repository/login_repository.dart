import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:todoapp/constant/api_constant.dart';
import 'package:todoapp/model/login_model.dart';

class LoginRepository {
  final dio = Dio();
  Future<LoginModel> login(String email, String password) async {
    final apiUrl = ApiConstant.baseUrl + ApiConstant.loginEndpoint;
    Map<String, String> body = {"email": email, "password": password};
    Response response = await dio.post(apiUrl, data: body);

    log(response.data.toString());

    return LoginModel.fromJson(jsonDecode(response.data));
  }
}
