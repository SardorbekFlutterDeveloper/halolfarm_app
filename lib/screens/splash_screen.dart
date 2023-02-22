import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/screens/language_page/lang_choice_splash.dart';


class SpalshPage extends StatefulWidget {
  const SpalshPage({Key? key}) : super(key: key);

  @override
  State<SpalshPage> createState() => _SpalshPageState();
}

class _SpalshPageState extends State<SpalshPage> {
  @override
  void initState() {

    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(context, "/lang", (route) => false)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.instance.green,
      body: Center(
        
        child: SvgPicture.asset("assets/svg/login.svg"),
      ),
    );
  }
}
