
import 'package:flutter/material.dart';
import 'package:halol_farm/core/components/bottomBar/bottom_bar.dart';
import 'package:halol_farm/screens/choose_plan/plan_page.dart';

import 'package:halol_farm/screens/language_page/lang_choice_splash.dart';
import 'package:halol_farm/screens/login_in/login_in_page.dart';
import 'package:halol_farm/screens/no_connection/no_connection_page.dart';
import 'package:halol_farm/screens/on_boarding_pages/on_bording_page.dart';
import 'package:halol_farm/screens/home/home_screen/home_page.dart';
import 'package:halol_farm/screens/sign_page/sign_page.dart';
import 'package:halol_farm/screens/splash_screen.dart';

import '../screens/sign_page/sms_kod_page.dart';

class MyRouter {
  static final MyRouter _instance = MyRouter._init();
  static MyRouter get instance => _instance;
  MyRouter._init();

  Route? onGnerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return simpleRoute(const SpalshPage());
      case "/lang":
        return simpleRoute(Lang_Choice());
      case "/onBording":
        return simpleRoute(const OnBoardingPage());
      case "/signUp":
        return simpleRoute(const SignPage());
 
      case "/akkgaKirish":
        return simpleRoute(const LoginInPage());
       case "/sms":
        return simpleRoute(const SmsKodPage());
      case "/bottom":
        return simpleRoute(const BottomNavBar());
      case "/noConnection":
        return simpleRoute(const NoConnection());
       case "/plan":
        return simpleRoute(const PlanPage());
    }
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
