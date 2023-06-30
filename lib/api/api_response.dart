import 'dart:convert';

import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/shared_preferences.dart';
import 'package:coffeebeansorter_mobile/model/user.dart';
import 'package:http/http.dart' as http;

class ApiResponse{
  Object?  data;
  String? error;
}
Future<ApiResponse> getUserDetail()async{
  ApiResponse apiResponse = ApiResponse();
  String token = await getToken();
  int studentId = await getstudentId();
  final response = await http.get(
      Uri.parse(userProfileURL),
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token'
      });
  if(response.statusCode == 200){
    apiResponse.data = User.fromJson(jsonDecode(response.body));
  }
  print(apiResponse.data);
  print(token);
  return apiResponse;
}