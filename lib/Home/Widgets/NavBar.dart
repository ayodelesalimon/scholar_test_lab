import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
          //borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        elevation: 20,
        child: BottomNavigationBar(
          //   fixedColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,

          unselectedFontSize: 12,
          selectedIconTheme: IconThemeData(color: Colors.blue, size: 16),
          selectedItemColor: Colors.blue,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SvgPicture.asset(
                  "assets/images/explore tab.svg",
                  color: Colors.blue,
                ),
              ),
              label: 'Explorer',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SvgPicture.asset(
                  "assets/images/scholarships tab.svg",
                  //color: Colors.blue,
                ),
              ),
              label: 'Application',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SvgPicture.asset(
                  "assets/images/love tab.svg",
                  //     color: Colors.blue,
                ),
              ),
              label: 'Bookmarks',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SvgPicture.asset(
                  "assets/images/profile tab.svg",
                  //     color: Colors.blue,
                ),
              ),
              label: 'Profile',
            ),
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset(
            //     "assets/images/explore tab.svg",
            //     color: Colors.blue,
            //   ),
            //   label: 'Explorer',
            // ),
          ],
        ),
      ),
    );
  }
}