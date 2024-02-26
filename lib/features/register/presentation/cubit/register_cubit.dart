import 'package:appointment_app/features/register/presentation/cubit/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../data/models/register_request_body.dart';
import '../../data/repos/register_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());
  void emitRegisterState() async {
    final response = await registerRepo.register(RegisterRequestBody(
        name: nameController.text,
        phone: phoneController.text,
        gender: 1,
        passwordConfirmation: passwordConfirmationController.text,
        email: emailController.text,
        password: passwordController.text));
    response.when(success: (registerResponse) {
      emit(RegisterState.registerSuccess(registerResponse));
    }, failure: (error) {
      emit(RegisterState.registerError(error: error.toString()));
    });
  }
}
