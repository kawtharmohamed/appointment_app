
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse{
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;
  LoginResponse({required this.message,required this.userData,
    required this.status,required this.code});
  factory LoginResponse.fromJson(Map<String, dynamic> json)=>_$LoginResponseFromJson(json);
}
@JsonSerializable()
class UserData{
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({required this.token,required this.userName});
  factory UserData.fromJson(Map <String, dynamic> json)=>_$UserDataFromJson(json);
}