import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText( textAlign: TextAlign.center,
        text: TextSpan(children: [
      TextSpan(
          text: 'Already have an account ? ',
          style: TextStyles.font13DarkBlueRegular),
      TextSpan(text: ' Sing Up ', style: TextStyles.font15BlueSemiBold),
    ]));
  }
}
