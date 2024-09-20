
import 'package:flutter/material.dart';
import 'package:flyinn/View/Auth/screens/default_field.dart';
import 'package:flyinn/View/Base/base.dart';
import 'package:flyinn/View/Foods/screens/recent_search_item.dart';
import 'package:flyinn/View/Models/category_model.dart';
import 'package:flyinn/View/utils/Theme/app_colors.dart';
import 'package:flyinn/View/utils/Theme/assets_constantes.dart';
import 'package:flyinn/View/utils/Theme/font_size.dart';
import 'package:flyinn/View/utils/Theme/response_conf.dart';
import 'package:flyinn/View/utils/Theme/text_styles.dart';
import 'package:gap/gap.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      appBar: buildAppBar(buildContext: context, screenTitle: "Search Food"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(16),
              DefaultField(
                controller: searchController,
                hintText: "Search Food",
                prefixIcon: Icons.search,
                suffixIcon: Icons.filter,
              ),
              const Gap(24),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: categories
                      .asMap()
                      .map((key, category) => MapEntry(
                          key,
                          Container(
                            width: getSize(65),
                            height: getSize(65),
                            padding: const EdgeInsets.all(8),
                            decoration: ShapeDecoration(
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x0A111111),
                                  blurRadius: 24,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                              color:
                                  key == 0 ? Pallete.orangePrimary : Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(category.link),
                                const Gap(4),
                                Text(
                                  category.designation.toString(),
                                  style: TextStyles.bodyMediumMedium.copyWith(
                                      color: key == 0
                                          ? Colors.white
                                          : Pallete.neutral60),
                                )
                              ],
                            ),
                          )))
                      .values
                      .toList()),
              const Gap(24),
              SizedBox(
                height: getHeight(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent searches',
                        style: TextStyles.bodyLargeSemiBold
                            .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large))),
                    Text('Delete',
                        textAlign: TextAlign.center,
                        style: TextStyles.bodyMediumMedium
                            .copyWith(color: Pallete.orangePrimary, fontSize: getFontSize(FontSizes.medium))),
                  ],
                ),
              ),
              Column(
                children: List.generate(5, (index) => const RecentSearchItem()),
              ),
              const Gap(24),
              Container(
                width: double.infinity,
                height: getHeight(2),
                color: Pallete.neutral30,
              ),
              const Gap(16),
              Text('My recent orders',
                  style: TextStyles.bodyLargeSemiBold
                      .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.large))),
             Column(
               children: List.generate(4, (index) =>  Padding(
                 padding: EdgeInsets.only(top: getHeight(16)),
                 child: SizedBox(
                   height: getHeight(68),
                   child: Row(
                     children: [
                       Container(
                         width: getWidth(70),
                         height: getHeight(65),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(getSize(8)),
                             image: const DecorationImage(
                                 image: AssetImage(AssetsConstants.ordinaryBurger),
                                 fit: BoxFit.fill)),
                       ),
                       const Gap(8),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Ordinary Burgers',
                               style: TextStyles.bodyLargeSemiBold
                                   .copyWith(color: Pallete.neutral100, fontSize: getFontSize(FontSizes.medium))),
                           const Gap(4),
                           Text('Burger Restaurant',
                               style: TextStyles.bodySmallRegular
                                   .copyWith(color: const Color(0xFF878787), fontSize: getFontSize(FontSizes.small))),
                           const Gap(8),
                           Row(
                             children: [
                               Row(
                                 children: [
                                   Icon(Icons.star, color: Pallete.orangePrimary, size: getSize(16),),
                                   const Gap(4),
                                   Text("4.9", style: TextStyles.bodySmallMedium.copyWith(
                                       color: Pallete.neutral100,
                                       fontSize: getFontSize(FontSizes.small)
                                   ),)
                                 ],
                               ),
                               const Gap(8),
                               Row(
                                 children: [
                                   Icon(Icons.location_on_outlined, color: Pallete.orangePrimary, size: getSize(16),),
                                   const Gap(4),
                                   Text("190m", style: TextStyles.bodySmallMedium.copyWith(
                                       color: Pallete.neutral100,
                                       fontSize: getFontSize(FontSizes.small)
                                   ),)
                                 ],
                               )
                             ],
                           ),
                         ],
                       )
                     ],
                   ),
                 ),
               )),
             )
            ],
          ),
        ),
      ),
    );
  }
}
