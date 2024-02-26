import 'package:appointment_app/core/networking/api_results.dart';

import '../../../../core/networking/api_services.dart';
import '../../../../core/networking/error_handler.dart';
import '../models/register_request_body.dart';
import '../models/register_response.dart';

class RegisterRepo {
  final ApiServices apiServices;

  RegisterRepo(this.apiServices);

  Future<ApiResults<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await apiServices.register(registerRequestBody);
      return ApiResults.success(response);
    }
    catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error.toString()));
    }
  }
}