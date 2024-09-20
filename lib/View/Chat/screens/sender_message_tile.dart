
import 'package:flutter/material.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class SenderMessageTile extends StatelessWidget {
  SenderMessageTile({super.key, this.message});
  String? message;
  @override
  Widget build(BuildContext context) {
    return   Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: getWidth(223),
            height: getHeight(32),
            padding:  EdgeInsets.all(getSize(8)),
            decoration: ShapeDecoration(
              color: Pallete.orangePrimary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getSize(8))),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                  message??'Okay, for what level of spiciness?',
                  style: TextStyles.bodySmallMedium.copyWith(
                      color: Pallete.whiteError,
                      fontSize: getFontSize(FontSizes.small)
                  )
              ),
            ),
          ),
          const Gap(6),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("09.15", style: TextStyles.bodySmallMedium.copyWith(
                  color: Pallete.neutral60,
                  fontSize: getFontSize(FontSizes.small)
              ),),
              const Gap(4),
              const Icon(
                Icons.check,
                color: Pallete.orangePrimary,
              )
            ],
          )
        ],
      ),
    );
  }
}
