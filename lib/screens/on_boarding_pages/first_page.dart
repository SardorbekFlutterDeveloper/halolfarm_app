import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/screens/sign_page/sign_page.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<String> images = [
    "assets/onboard/onboard1.png",
    "assets/onboard/onboard2.png",
    "assets/onboard/onboard3.png"
  ];

  List<String> names = [
    "Sevimli hayvonlaringizni onlayn sotib oling",
    "Ularni onlayn nazorat ostida fermada boqing",
    "Hayvonlaringizni istlagan paytida yetkazib beramiz"
  ];

  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(index == 0 ? 40 : 0),
                            bottomRight: Radius.circular(index == 2 ? 40 : 0),
                          ),
                          image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 32, bottom: 90),
                        child: Text(
                          names[index],
                          style: const TextStyle(
                              fontSize: 36, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              index == 0 ? Icons.circle : Icons.circle_outlined,
                              color: const Color(0xFF058F1A)),
                          Icon(
                            index == 1 ? Icons.circle : Icons.circle_outlined,
                            color: const Color(0xFF058F1A),
                          ),
                          Icon(
                            index == 2 ? Icons.circle : Icons.circle_outlined,
                            color: const Color(0xFF058F1A),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: InkWell(
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
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SignPage1(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }

  void next(int index) {
    images[index];
  }
}
