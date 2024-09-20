
import 'package:flutter/material.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/assets_constantes.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class ReceiverMessageTile extends StatelessWidget {
  ReceiverMessageTile({super.key, this.message});
   String? message;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: const AssetImage(AssetsConstants.user),
          radius: getSize(16),
        ),
        const Gap(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Stevano Clirover",
              style: TextStyles.bodyMediumSemiBold
                  .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium)),
            ),
            const Gap(8),
            Container(
              width: getWidth(141),

              padding: EdgeInsets.all(getSize(8)),
              decoration: ShapeDecoration(
                color: const Color(0xFFF3F4F7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getSize(8))),
              ),
              child: Text(message??'Just to order',
                  style: TextStyles.bodySmallMedium
                      .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.small))),
            ),
            const Gap(4),
            Text('09.00',
                style: TextStyles.bodySmallMedium
                    .copyWith(color: Pallete.neutral60, fontSize: getFontSize(FontSizes.small))),
          ],
        )
      ],
    );
  }
}
