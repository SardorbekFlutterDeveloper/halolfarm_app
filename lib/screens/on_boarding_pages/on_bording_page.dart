import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/widget/container_button.dart';
import 'package:halol_farm/screens/sign_page/sign_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<String> images = [
    "assets/images/buzoq.png",
    "assets/images/sigir.png",
    "assets/images/qoy.png"
  ];

  List<String> names = [
    "Sevimli hayvonlaringizni onlayn sotib oling",
    "Ularni onlayn nazorat ostida fermada boqing",
    "Hayvonlaringizni istlagan paytida yetkazib beramiz"
  ];
  String rasm = "assets/images/buzoq.png";
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Scaffold(
        backgroundColor: ConsColors.instance.scaffoldColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 370,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                  image: DecorationImage(
                      image: AssetImage(rasm), fit: BoxFit.fitWidth),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      bottom: 25,
                      left: 25,
                      right: 25,
                    ),
                    child: Text(
                      'onBoarding$index'.tr(),
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                          index == 1
                              ? Icons.fiber_manual_record
                              : Icons.fiber_manual_record_outlined,
                          color: ConsColors.instance.green),
                      Icon(
                          index == 2
                              ? Icons.fiber_manual_record
                              : Icons.fiber_manual_record_outlined,
                          color: ConsColors.instance.green),
                      Icon(
                          index == 3
                              ? Icons.fiber_manual_record
                              : Icons.fiber_manual_record_outlined,
                          color: ConsColors.instance.green),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 105, bottom: 16),
                    child: ContainerButton(
                      name: "next".tr(),
                      color: ConsColors.instance.green,
                      textColor: ConsColors.instance.white,
                      onTap: () {
                        if (index != 3) {
                          index += 1;
                        } else {
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/signUp", (route) => false);
                        }
                        if (index == 2) {
                          rasm = "assets/images/sigir.png";
                        } else if (index == 3) {
                          rasm = "assets/images/qoy.png";
                        }

                        setState(() {});
                        debugPrint("$index");
                      },
                    ),
                  )
                
                ],
              ),
            ]),
      ),
    );
  }

  void next(int index) {
    images[index];
  }
}
