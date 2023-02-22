import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/widget/container_button.dart';
import 'package:halol_farm/screens/language_page/_widget/lang_container_widget.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class Lang_Choice extends StatefulWidget {
  Lang_Choice({Key? key}) : super(key: key);

  @override
  State<Lang_Choice> createState() => _Lang_ChoiceState();
}

class _Lang_ChoiceState extends State<Lang_Choice> {
  bool ispressed = false;
  var til = "ru";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.instance.scaffoldColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Column(
            children: [
              const SizedBox(height: 80, width: 375),
              
              SizedBox(
                child: SvgPicture.asset(
                  "assets/svg/logo.svg",
                  alignment: Alignment.topCenter,
                  height: 30,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Text(
                'til_tanla'.tr(),
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
              ),
              SizedBox(
                height: 75,
                child: Text(
                  "til_t_sub".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              GestureDetector(
                onTap: () {
                  til = "uz";
              
                  context.setLocale(const Locale('uz'));
                },
                child: LangContainer(
                  chiziqRangi: til == "uz"
                      ? ConsColors.instance.green.withOpacity(0.3)
                      : ConsColors.instance.white,
                  flag: "assets/images/uzb.png",
                  name: "O'zbek tili",
                  topBorder: 30.0,
                  rang: til == "uz"
                      ? ConsColors.instance.green.withOpacity(0.3)
                      : ConsColors.instance.white,
                ),
              ),
              GestureDetector(
                child: LangContainer(
                  chiziqRangi: til == "en"
                      ? ConsColors.instance.green.withOpacity(0.3)
                      : ConsColors.instance.white,
                  flag: "assets/images/uk.png",
                  name: "English",
                  rang: til == "en"
                      ? ConsColors.instance.green.withOpacity(0.3)
                      : ConsColors.instance.white,
                ),
                onTap: () {
                  til = "en";
                  context.setLocale(const Locale('en'));
                },
              ),
              GestureDetector(
                child: LangContainer(
                  chiziqRangi: til == "ru"
                      ? ConsColors.instance.green.withOpacity(0.3)
                      : ConsColors.instance.white,
                  flag: "assets/images/rus.png",
                  name: "Русский язык",
                  rang: til == "ru"
                      ? ConsColors.instance.green.withOpacity(0.3)
                      : ConsColors.instance.white,
                  bottomBorder: 30.0,
                ),
                onTap: () {
                  til = "ru";
                  context.setLocale(const Locale('ru'));
                },
              ),
              const Spacer(),
              ContainerButton(
                textColor: ConsColors.instance.white,
                name: "next".tr(),
                color: ConsColors.instance.green,
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/onBording", (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
