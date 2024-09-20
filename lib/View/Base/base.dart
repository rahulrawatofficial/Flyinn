
import 'package:flutter/material.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';

PreferredSize buildAppBar({
  required BuildContext buildContext,
  bool? isBackup,
  required String screenTitle
}){
  return PreferredSize(
    preferredSize: const Size(double.infinity, 60),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(12)),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          screenTitle,
          style: TextStyles.bodyLargeSemiBold
              .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
        ),
        centerTitle: true,
        leading:isBackup==null? InkWell(
          onTap: () => Navigator.pop(buildContext),
          child: Container(
            height: getHeight(36),
            width: getHeight(36),
            decoration: BoxDecoration(
                border: Border.all(color: Pallete.neutral30, width: 1),
                shape: BoxShape.circle),
            child: Padding(
              padding: EdgeInsets.only(left: getWidth(8)),
              child: Icon(
                Icons.arrow_back_ios,
                color: Pallete.neutral100,
                size: getSize(20),
              ),
            ),
          ),
        ):null,
      ),
    ),
  );
}