import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasNumber;
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasNumber,
      required this.hasLowercase,
      required this.hasUppercase,
      required this.hasSpecialCharacter,
      required this.hasMinLength});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: MyColors.grey,
          radius: 2.5,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decorationColor: MyColors.green,
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationThickness: 2,
            color: hasValidated ? MyColors.grey : MyColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
