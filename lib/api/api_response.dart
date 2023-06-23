import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constant.dart';
import '../locals/shared_prefs.dart';
import '../models/user.dart';
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