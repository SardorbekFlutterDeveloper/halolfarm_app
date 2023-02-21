import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/screens/home/home_screen/home_page.dart';
import 'package:halol_farm/screens/home/notif_page/notif_page.dart';
import 'package:halol_farm/screens/home/profile_page/profile_page.dart';
import 'package:halol_farm/screens/home/search_page/search_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  HomePage? _homeScreen;
  SearchPage? _searchPage;
  NotifPage? _notifPage;
  ProfilePage? _profile;

  final List _pages = [];

  @override
  void initState() {
    super.initState();
    _homeScreen = const HomePage();
    _searchPage = const SearchPage();
    _notifPage = const NotifPage();
    _profile = const ProfilePage();

    _pages.addAll([_homeScreen, _searchPage, _notifPage, _profile]);
    debugPrint("$_pages");
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
          setState(() {
            currentIndex = v;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? SvgPicture.asset(
                    "assets/svg/home.svg",
                  )
                : SvgPicture.asset(
                    "assets/assets/svg/homeld.svg",
                  ),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 2
                ? SvgPicture.asset(
                    "assets/svg/search.svg",
                  )
                : SvgPicture.asset(
                    "assets/assets/svg/searchld.svg",
                  ),
          ), 
          BottomNavigationBarItem(
            icon: currentIndex == 3
                ? SvgPicture.asset(
                    "assets/svg/bell.svg",
                  )
                : SvgPicture.asset(
                    "assets/assets/svg/belld.svg",
                  ),
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 4
                ? SvgPicture.asset(
                    "assets/svg/user.svg",
                  )
                : SvgPicture.asset(
                    "assets/assets/svg/userld.svg",
                  ),
          ),
        ],
      ),
    );
  }
}
