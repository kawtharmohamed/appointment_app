
import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';
@JsonSerializable()
class RegisterResponse{
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;
  RegisterResponse({required this.message,required this.userData,
    required this.status,required this.code});
  factory RegisterResponse.fromJson(Map<String, dynamic> json)=>_$RegisterResponseFromJson(json);
}
@JsonSerializable()
class UserData{
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({required this.token,required this.userName});
  factory UserData.fromJson(Map <String, dynamic> json)=>_$UserDataFromJson(json);
}