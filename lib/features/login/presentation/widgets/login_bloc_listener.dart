import 'package:appointment_app/core/helpers/extentions.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/features/home/presentation/pages/home_page.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/presentation/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (BuildContext context, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                      child: CircularProgressIndicator(
                    color: MyColors.mainBlue,
                  )));
        }, success: (loginResponse) {
          context.pop();
          context.pushNamed(Routes.homePage);
        }, error: (error) {
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
}
