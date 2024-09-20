
import 'package:flutter/material.dart';
import 'package:flyinn/View/Base/base.dart';
import 'package:flyinn/View/Notifications/Models/notification_model.dart';
import 'package:flyinn/View/Notifications/screens/notification_item.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);

    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle: "Notification"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
            child: Container(
              padding: EdgeInsets.only(bottom: getHeight(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: TextStyles.bodyMediumSemiBold.copyWith(
                        color: Pallete.neutral60,
                        fontSize: getFontSize(FontSizes.medium)),
                  ),
                  const Gap(16),
                  Column(
                      children: todayDemoNotifications
                          .asMap()
                          .map((key, value) => MapEntry(
                              key,
                              NotificationTile(
                                  notificationModel: value,
                                  isEspecialNotification:
                                      key == 2 ? true : false)))
                          .values
                          .toList())
                ],
              ),
            ),
          ),
          Container(
            width: 375,
            height: 4,
            decoration: const BoxDecoration(color: Color(0xFFEDEDED)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
            child: Container(
              padding: EdgeInsets.only(top: getHeight(24)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday",
                    style: TextStyles.bodyMediumSemiBold
                        .copyWith(color: Pallete.neutral60, fontSize: getFontSize(FontSizes.medium)),
                  ),
                  const Gap(16),
                  Column(
                      children: yesterdayDemoNotifications
                          .asMap()
                          .map((key, value) => MapEntry(
                              key,
                              NotificationTile(
                                  notificationModel: value,
                                  isEspecialNotification:
                                      key == 1 ? true : false)))
                          .values
                          .toList())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
