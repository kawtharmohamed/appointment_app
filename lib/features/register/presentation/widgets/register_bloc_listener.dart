import 'package:appointment_app/core/helpers/extentions.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_state.dart';
import 'package:appointment_app/features/register/presentation/cubit/register_cubit.dart';
import 'package:appointment_app/features/register/presentation/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (BuildContext context, state) {
        state.whenOrNull(registerLoading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                      child: CircularProgressIndicator(
                    color: MyColors.mainBlue,
                  )));
        }, registerSuccess: (registerResponse) {
          context.pop();
          showSuccessDialog(context);
        }, registerError: (error) {
          setupErrorState(context, error);
        });
      },
      listenWhen: ((previous, current) =>
          current is Success || current is Loading || current is Error),
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: MyColors.red,
                size: 32,
              ),
              content: Text(
                error,
                style: TextStyles.font15DarkBlueMedium,
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    'Got it',
                    style: TextStyles.font15BlueSemiBold,
                  ),
                )
              ],
            ));
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Sign Up Successful",),
        content:  const SingleChildScrollView(child: ListBody(children: [
          Text("Your account has been created successfully."),
        ],),),
        actions: [TextButton(onPressed: (){
          context.pushNamed(Routes.loginPage);
        }, style: TextButton.styleFrom(
          primary: MyColors.white, backgroundColor: MyColors.mainBlue ,
          onSurface: MyColors.grey,
        ), child:const Text('Continue' ),)],
      )
    );
  }
}
