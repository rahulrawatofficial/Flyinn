
import 'package:flutter/material.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';

class AccountStatus extends StatelessWidget {
  const AccountStatus({super.key, required this.action, required this.question});
  final String question;
  final String action;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
                text: question,
                style: TextStyles.bodyMediumMedium.copyWith(
                    color: Pallete.neutral100, fontSize: getFontSize(14))),
            TextSpan(
                text: ' ',
                style: TextStyles.bodyMediumSemiBold
                    .copyWith(fontSize: getFontSize(14))),
            TextSpan(
                text: action,
                style: TextStyles.bodyMediumSemiBold.copyWith(
                    color: Pallete.orangePrimary, fontSize: getFontSize(14))),
          ],
        ),
      ),
    );
  }
}
