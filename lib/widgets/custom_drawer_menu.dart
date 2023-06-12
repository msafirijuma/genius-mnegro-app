import 'package:flutter/material.dart';
import 'package:mnegro_app/nav_bottom_pages/homepage.dart';
import '../pages/about/about_us.dart';
import '../pages/books/books.dart';
import '../pages/classes/a_level_classes.dart';
import '../pages/classes/o_level_classes.dart';
import '../pages/exams/a_level_exams.dart';
import '../pages/exams/bam_exams.dart';
import '../pages/exams/o_level_exams.dart';
import '../pages/help/help.dart';
import '../pages/setting/settings.dart';
import '../pages/share_app/share_app.dart';
import '../pages/technology/tech.dart';

class CustomDrawerMenu extends StatefulWidget {
  const CustomDrawerMenu({super.key});

  @override
  State<CustomDrawerMenu> createState() => _CustomDrawerMenuState();
}

class _CustomDrawerMenuState extends State<CustomDrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //Remoing padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          // const DrawerHeader(
          //     decoration: BoxDecoration(
          //       color: Colors.lightGreenAccent,
          //     ),
          //     child: Text("Mnegro")),
          const Center(
            child: UserAccountsDrawerHeader(
              accountName: Text('Genius Mnegro'),
              accountEmail: Text("mnegroapp@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black26,
                child: Text(
                  "GM",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              size: 28,
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Homepage()));
            },
          ),
          ExpansionTile(
            title: const Text("Classes"),
            textColor: Colors.black87,
            leading: const Icon(Icons.class_),
            //add icon
            childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
            //children padding
            children: [
              ListTile(
                title: const Text("O Level"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OLevelClasses(),
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.black87,
                height: 2,
              ),
              ListTile(
                title: const Text("A Level"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ALevelClasses(),
                    ),
                  );
                },
              ),
            ],
          ),
          ExpansionTile(
            title: const Text("Exams"),
            textColor: Colors.black87,
            leading: const Icon(Icons.newspaper),
            //add icon
            childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
            //children padding
            children: [
              ListTile(
                title: const Text("O Level"),
                onTap: () {
                  //action on press
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OLevelExams(),
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.black87,
                height: 2,
              ),
              ListTile(
                title: const Text("A Level"),
                onTap: () {
                  //action on press
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ALevelExams(),
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.black87,
                height: 2,
              ),
              ListTile(
                focusColor: Colors.deepOrange,
                title: const Text("BAM"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BAMExams(),
                    ),
                  );
                },
              ),

              //more child menu
            ],
          ),
          ListTile(
            leading: const Icon(
              Icons.trending_up,
            ),
            title: const Text('Technology'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const TechPage()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.book_rounded,
            ),
            title: const Text('Books'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const BookShop()),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Setting'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.help_rounded,
            ),
            title: const Text('Help'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HelpDesk(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
            ),
            title: const Text('Share'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ShareApp(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
            ),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AboutAppPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
