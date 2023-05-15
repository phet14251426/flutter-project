import 'package:francies_mobie_1/models/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    var url = Uri.http('localhost::8081', '/api/Mobile/login');

    final respone = await http.post(url, body: requestModel.toJson());

    if (respone.statusCode == 200 || respone.statusCode == 400) {
      return LoginResponseModel.fromJson(json.decode(respone.body));
    } else {
      throw Exception('Failed to load Data');
    }
  }
}
