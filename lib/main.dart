import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:halol_farm/router/myrouter.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("uz"),
        Locale("en"),
        Locale("ru", ),

        
      ],
      path: "assets/lang",
      fallbackLocale: const Locale('uz'),
      startLocale: const Locale('uz'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Halal Farm',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        initialRoute: "/onBording",
        onGenerateRoute: MyRouter.instance.onGnerateRoute,
      );
    });
  }
}
