import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/presentation/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../cubit/register_cubit.dart';
class RegisterForm extends StatefulWidget{

  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscureText = true;
  bool isObscureTextPasswordConfirmation = true;
  bool hasNumber= false;
  bool hasLowercase= false;
  bool hasUppercase= false;
  bool hasSpecialChar= false;
  bool hasMinLength= false;
  late TextEditingController passwordController;
  @override
  void initState(){
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUppercase(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialChar(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Form( key: context.read<RegisterCubit>().formKey,
        child: Column(children:[
          AppTextFormField(hintText: "Name",
            validator: (value ) {
              if ( value== null || value.isEmpty || !AppRegex.isNameValid(value)){
                return "please enter a valid name";
              }
            },
            controller: context.read<RegisterCubit>().nameController,),
          verticalSpace(12),
          AppTextFormField(hintText: "Phone Number",
            validator: (value ) {
              if ( value== null || value.isEmpty || !AppRegex.isPhoneValid(value)){
                return "please enter a valid phone number";
              }
            },
            controller: context.read<RegisterCubit>().phoneController,),
          verticalSpace(12),
       AppTextFormField(hintText: "Email",
         validator: (value ) {
         if ( value== null || value.isEmpty || !AppRegex.isEmailValid(value)){
           return "please enter a valid email";
         }
       },
       controller: context.read<RegisterCubit>().emailController,),
      verticalSpace(12),
      AppTextFormField(
        hintText: "Password",
        isObscureText: isObscureText,
        suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            child: Icon(isObscureText
                ? Icons.visibility_off
                : Icons.visibility)),
        validator: (value ) {
          if ( value== null || value.isEmpty ){
            return "please enter a valid password";
          }
        },
        controller: context.read<RegisterCubit>().passwordController,
      ),
      verticalSpace(12),
          AppTextFormField(
            hintText: "Password Confirmation",
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(isObscureText
                    ? Icons.visibility_off
                    : Icons.visibility)),
            validator: (value ) {
              if ( value== null || value.isEmpty ){
                return "please enter a valid password";
              }
            },
            controller: context.read<RegisterCubit>().passwordConfirmationController,
          ),
          verticalSpace(24),
          PasswordValidations(
            hasNumber: hasNumber,
            hasLowercase: hasLowercase,
            hasUppercase: hasUppercase,
            hasSpecialCharacter: hasSpecialChar,
            hasMinLength: hasMinLength,
          ),
    ]));
  }
  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}