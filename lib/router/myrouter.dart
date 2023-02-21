
import 'package:flutter/material.dart';
import 'package:halol_farm/screens/on_boarding_pages/first_page.dart';
import 'package:halol_farm/screens/home/home_screen/home_page.dart';
import 'package:halol_farm/screens/splash_screen.dart';

class MyRouter {
  static final MyRouter _instance = MyRouter._init();
  static MyRouter get instance => _instance;
  MyRouter._init();

  Route? onGnerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return simpleRoute(const HomePage());
      case "/splashPage":
        return simpleRoute(const SpalshPage());
      case "/OnBoarding":
        return simpleRoute(const OnBoardingPage());
    }
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
