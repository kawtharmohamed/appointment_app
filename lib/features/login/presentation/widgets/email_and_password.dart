import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/presentation/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_text_form_field.dart';
class EmailAndPassword extends StatefulWidget{

  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  bool hasNumber= false;
  bool hasLowercase= false;
  bool hasUppercase= false;
  bool hasSpecialChar= false;
  bool hasMinLength= false;
  late TextEditingController passwordController;
  @override
  void initState(){
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
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

    return Form( key: context.read<LoginCubit>().formKey,
        child: Column(children:[
       AppTextFormField(hintText: "Email",
         validator: (value ) {
         if ( value== null || value.isEmpty || !AppRegex.isEmailValid(value)){
           return "please enter your email";
         }
       },
       controller: context.read<LoginCubit>().emailController,),
      verticalSpace(18),
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
            return "please enter your password";
          }
        },
        controller: context.read<LoginCubit>().passwordController,
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