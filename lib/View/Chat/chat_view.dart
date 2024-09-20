
import 'package:flutter/material.dart';
import 'package:flyinn/View/Chat/screens/discussion_tile.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/assets_constantes.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 294,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    AssetsConstants.chatBackground,
                  ),
                  fit: BoxFit.fill,
                  opacity: 0.2)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(24))
              .copyWith(top: MediaQuery.of(context).viewPadding.top),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: getHeight(60),
                padding: EdgeInsets.symmetric(vertical: getHeight(12)),
                child: Center(
                  child: Text(
                    "Chat List",
                    style: TextStyles.bodyLargeSemiBold
                        .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
                  ),
                ),
              ),
              const Gap(16),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "All Messages",
                  style: TextStyles.bodyLargeSemiBold
                      .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large)),
                ),
              ),
              const Gap(16),
             Expanded(
               child: ListView(
                 children: List.generate(20, (index) =>  Padding(
                   padding:  EdgeInsets.only(bottom: getHeight(12)),
                   child: const DiscussionTile()
                 )),
               ),
             )
            ],
          ),
        )
      ],
    ));
  }
}
