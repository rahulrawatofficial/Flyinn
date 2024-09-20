import 'package:flutter/material.dart';
// import 'package:flyinn/View/utils/helpers/navigation_helper.dart';
// import 'package:flyinn/View/utils/helpers/snackbar_helper.dart';
// import 'package:flyinn/View/values/app_routes.dart';
// import 'package:flyinn/View/values/app_strings.dart';
// import 'package:flyinn/View/values/app_theme.dart';
import 'package:flyinn/routes_name.dart';

import 'routes.dart';

class FlyinnApp extends StatelessWidget {
  const FlyinnApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: AppStrings.loginAndRegister,
    //   theme: AppTheme.themeData,
    //   initialRoute: AppRoutes.login,
    //   scaffoldMessengerKey: SnackbarHelper.key,
    //   navigatorKey: NavigationHelper.key,
    //   onGenerateRoute: Routes.generateRoute,
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.onGenerateRoute,
      theme: ThemeData(canvasColor: Colors.white),
      
    );
  }
}