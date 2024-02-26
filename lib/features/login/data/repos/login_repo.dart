import 'package:appointment_app/core/networking/api_services.dart';
import 'package:appointment_app/core/networking/error_handler.dart';
import 'package:appointment_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_app/features/login/data/models/login_response.dart';

import '../../../../core/networking/api_results.dart';

class LoginRepo {
 final ApiServices apiServices;

  LoginRepo(this.apiServices);

  Future<ApiResults<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiServices.login(loginRequestBody);
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error.toString()));
    }
  }
}
