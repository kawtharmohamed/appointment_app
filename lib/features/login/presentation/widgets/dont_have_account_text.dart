import 'package:appointment_app/core/helpers/extentions.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText( textAlign: TextAlign.center,
        text: TextSpan(children: [
      TextSpan(
          text:  "Don't have an account ?",
          style: TextStyles.font13DarkBlueRegular),
          TextSpan(
            text: ' Sign Up ',
            style: TextStyles.font15BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
              context.pushNamed(Routes.registerPage);
              },
          ),
    ]));
  }
}
