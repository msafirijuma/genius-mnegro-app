import 'package:flutter/material.dart';

import '../../widgets/accordion_faq.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class HelpDesk extends StatefulWidget {
  const HelpDesk({super.key});

  @override
  State<HelpDesk> createState() => _HelpDeskState();
}

class _HelpDeskState extends State<HelpDesk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawerMenu(),
        backgroundColor: Colors.white38,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
          child: Center(
            child: Column(
              children: [
                // Header
                Text(
                  'Get Quick Help',
                  style: TextStyle(
                    fontFamily: 'Dancing',
                    fontSize: 30.0,
                    color: Colors.teal[400],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // description about app
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'About Payment',
                  style: TextStyle(
                    fontFamily: 'Dancing',
                    fontSize: 30.0,
                    color: Colors.teal[400],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'F.A.Q',
                  style: TextStyle(
                    fontFamily: 'Dancing',
                    fontSize: 30.0,
                    color: Colors.teal[400],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  style: TextStyle(fontSize: 16.0),
                ),
                const AccordionFAQ()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
