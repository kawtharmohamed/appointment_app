import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyColors.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            minimumSize:
                MaterialStateProperty.all(const Size(double.infinity, 55))),
        child: Text(
          "Get Started",
          style: TextStyles.font16White500Weight,
        ));
  }
}
