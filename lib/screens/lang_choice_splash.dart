import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/screens/OnBoardingPages/first_page.dart';

class Lang_Choice extends StatelessWidget {
  const Lang_Choice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                height: 38.11,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Tilni tanlang",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "Dasturni qaysi tilda ishlatishni xohlaysiz?",
                  style: TextStyle(color: Colors.grey, fontSize: 19),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.37,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF2F1F7)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: const ListTile(
                      style: ListTileStyle.drawer,
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/uzb2.png"),
                      ),
                      title: Text(
                        "O'zbek tili",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25),
                      ),
                    ),
                    onTap: () {},
                  ),
                  const Divider(),
                  InkWell(
                    child: const ListTile(
                      focusColor: Colors.greenAccent,
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/uk2.png"),
                      ),
                      title: Text(
                        "English",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25),
                      ),
                    ),
                    onTap: () {},
                  ),
                  const Divider(),
                  InkWell(
                    child: const ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/rus2.png"),
                      ),
                      title: Text(
                        "Русский язык",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
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
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
