
import 'package:flutter/material.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class ProfileInfoTile extends StatelessWidget {
  ProfileInfoTile(
      {super.key, required this.prefixIcon, this.function, required this.title});
  final IconData prefixIcon;
  final String title;
  VoidCallback? function;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getHeight(8)),
      child: InkWell(
        onTap: function,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: getHeight(8)),
          child: Row(
            children: [
              Container(
                height: getSize(28),
                width: getSize(28),
                padding: EdgeInsets.all(getSize(4)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getSize(8)),
                    color: const Color(0xFFF5F5FF)),
                child: Icon(
                  prefixIcon,
                  color: Pallete.neutral100,
                  size: getSize(20),
                ),
              ),
              const Gap(16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyles.bodyMediumMedium
                      .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Pallete.neutral100,
                size: getSize(24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
