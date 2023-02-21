import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/screens/on_boarding_pages/first_page.dart';

class Lang_Choice extends StatefulWidget {
 Lang_Choice({Key? key}) : super(key: key);

  @override
  State<Lang_Choice> createState() => _Lang_ChoiceState();
}

class _Lang_ChoiceState extends State<Lang_Choice> {
bool ispressed = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 88, left: 16, right: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 138, right: 138),
                child: SvgPicture.asset(
                  "assets/onboard/logo2.svg",
                  height: 30,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 68,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Tilni tanlang",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    "Dasturni qaysi tilda ishlatishni xohlaysiz?",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 48,
              ),

              Container(
                
              ),

              const SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingPage(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xFF058F1A)),
                  child: const Center(
                    child: Text("Keyingisi",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


