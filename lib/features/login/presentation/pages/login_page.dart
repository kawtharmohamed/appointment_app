import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/presentation/widgets/already_have_account_text.dart';
import 'package:appointment_app/features/login/presentation/widgets/email_and_password.dart';
import 'package:appointment_app/features/login/presentation/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_button.dart';
import '../../data/models/login_request_body.dart';
import '../widgets/login_bloc_listener.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to\nsee what you\'ve been up to since you last\nlogged in.',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password ? ",
                          style: TextStyles.font13BlueRegular,
                        )),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Login',
                      textStyle: TextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text));
    }
  }
}
