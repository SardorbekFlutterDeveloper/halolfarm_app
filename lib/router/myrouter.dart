import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:halol_farm/screens/OnBoardingPages/first_page.dart';
import 'package:halol_farm/screens/home_page.dart';


class MyRouter {
  Route? ongenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/splashPage":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/OnBoarding":
        return MaterialPageRoute(builder: (_) =>  const OnBoardingPage());
     
    
    }
  }
}
