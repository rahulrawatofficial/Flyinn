
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flyinn/View/Auth/screens/account_status.dart';
import 'package:flyinn/View/Auth/screens/default_button.dart';
import 'package:flyinn/View/Auth/screens/default_field.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:flyinn/View/utils/utils.dart';
import 'package:gap/gap.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final usernameController = TextEditingController();
    MathUtils.init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(24)).copyWith(
        top: MediaQuery.of(context).viewPadding.top,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(32),
          Text(
            "Create your new \naccount",
            style: TextStyles.headingH4SemiBold
                .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.h4)),
          ),
          const Gap(8),
          Text(
            "Create an account to start looking for the food \nyou like ",
            style:
                TextStyles.bodyMediumMedium.copyWith(color: Pallete.neutral60 , fontSize: getFontSize(FontSizes.medium)),
          ),
          const Gap(12),
          DefaultField(
            hintText: "Enter Email",
            controller: emailController,
            labelText: "Email Address",
          ),
          const Gap(14),
          DefaultField(
            hintText: "User Name",
            controller: usernameController,
            labelText: "User Name",
          ),
          const Gap(14),
          DefaultField(
            hintText: "Password",
            controller: passwordController,
            labelText: "Password",
            isPasswordField: true,
          ),
          const Gap(24),
          Row(
            children: [
              Checkbox(
                fillColor:
                    const MaterialStatePropertyAll(Pallete.orangePrimary),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getSize(4))),
                value: true,
                onChanged: (value) {},
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "I Agree with ",
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium))),
                      TextSpan(
                          text: 'Terms of Service',
                          style: TextStyles.bodyMediumSemiBold
                              .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(FontSizes.medium))),
                      TextSpan(
                          text: ' and ',
                          style: TextStyles.bodyMediumMedium
                              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium))),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyles.bodyMediumSemiBold
                              .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(FontSizes.medium))),
                    ],
                  ),
                ),
              )
            ],
          ),
          const Gap(24),
          DefaultButton(
            btnContent: "Register",
          ),
          const Gap(24),
          Row(
            children: [
              const Expanded(
                  child: Divider(
                color: Pallete.neutral60,
                height: 0.5,
              )),
              const Gap(16),
              Text(
                "Or sign in with",
                style: TextStyles.bodyMediumMedium
                    .copyWith(color: Pallete.neutral60, fontSize: getFontSize(FontSizes.medium)),
              ),
              const Gap(16),
              const Expanded(
                  child: Divider(
                color: Pallete.neutral60,
                height: 0.5,
              )),
            ],
          ),
          const Gap(24),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: socialIcons.map((e) => Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                      Border.all(color: Pallete.neutral40, width: 1)),
                  child: SvgPicture.asset(
                      e
                  ),
                ),
              )).toList()
          ),
          const Gap(32),
          const AccountStatus(action: " Sign In", question: "Don't have an account")
        ],
      ),
    ));
  }
}
