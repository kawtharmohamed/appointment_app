import 'package:appointment_app/core/networking/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part'api_results.freezed.dart';
@Freezed()
abstract class ApiResults<T>with _$ApiResults <T> {
  const factory ApiResults.success(T data)= Success<T>;
  const factory ApiResults.failure(ErrorHandler errorHandler) = Failure<T>;
}
