
import 'package:flutter/material.dart';
import 'package:flyinn/View/Auth/screens/default_button.dart';
import 'package:flyinn/View/Auth/screens/default_field.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:flyinn/routes_name.dart';
import 'package:gap/gap.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    MathUtils.init(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(24)).copyWith(
          top: MediaQuery.of(context).viewPadding.top,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(32),
            Text(
              "Forgot password?",
              style: TextStyles.headingH4SemiBold
                  .copyWith(color: Pallete.neutral100, fontSize: getFontSize(32)),
            ),
            const Gap(8),
            Text(
              "Enter your email address and we’ll send you confirmation code to reset your password",
              style: TextStyles.bodyMediumMedium
                  .copyWith(color: Pallete.neutral60, fontSize: getFontSize(14)),
            ),
            const Gap(32),
            DefaultField(
              hintText: "Enter Email",
              controller: emailController,
              labelText: "Email Address",
            ),
            const Spacer(),
             DefaultButton(
              btnContent: "Continue",
              function: () => Navigator.pushNamed(context, RoutesName.otpVerification),
            ),
            const Gap(32)
          ],
        ),
      ),
    );
  }
}
