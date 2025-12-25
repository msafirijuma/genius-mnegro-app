import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
// import 'package:mnegro_app/widgets/custom_app_bar.dart';
import 'classes.dart';
import 'exams.dart';
import 'main_homepage.dart';
// import '../widgets/custom_drawer_menu.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyAppState();
}

class _MyAppState extends State<Homepage> {
  int navTabIndex = 0;
  static const List<Widget> bottomNavMenuItems = <Widget>[
    MainHomepage(),
    Classes(),
    Exams()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: bottomNavMenuItems.elementAt(navTabIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[800]!,
              gap: 8,
              activeColor: Colors.grey[100],
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 300),
              tabBackgroundColor: Colors.white24,
              color: Colors.white,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.calendarAlt,
                  text: 'Classes',
                ),
                GButton(
                  icon: LineIcons.file,
                  text: 'Exams',
                ),
              ],
              selectedIndex: navTabIndex,
              onTabChange: (index) {
                setState(() {
                  navTabIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
