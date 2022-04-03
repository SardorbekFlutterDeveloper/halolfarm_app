import 'package:flutter/material.dart';
import 'package:halol_farm/router/myrouter.dart';
import 'package:halol_farm/screens/OnBoardingPages/first_page.dart';
import 'package:halol_farm/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final MyRouter _forRouter = MyRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Halal Farm',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: _forRouter.ongenerateRoute,
    );
  }
} 