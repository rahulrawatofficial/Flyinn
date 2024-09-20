
import 'package:flutter/material.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class RecentSearchItem extends StatelessWidget {
  const RecentSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getHeight(16)),
      child: SizedBox(
        height: getHeight(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.search,
                  size: getSize(20),
                  color: Pallete.neutral60,
                ),
                const Gap(12),
                Text('Burgers',
                    style: TextStyles.bodyLargeRegular
                        .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large))),
              ],
            ),
            Icon(
              Icons.close,
              size: getSize(20),
              color: Pallete.neutral60,
            )
          ],
        ),
      ),
    );
  }
}
