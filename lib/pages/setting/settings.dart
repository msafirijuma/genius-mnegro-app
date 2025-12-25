import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../globals/globals.dart';
import '../../theme/theme_changer.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: ListView(
          children: [
            const Text(
              'Appearance',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  ThemeChanger.of(context)!.changeTheme();
                  Globals.isDark = !(Globals.isDark);
                });
              },
              contentPadding: const EdgeInsets.all(0),
              leading: const Icon(FontAwesome.sun),
              title: const Text('Choose Theme'),
              trailing:
                  Icon(Globals.isDark ? Globals.darkIcon : Globals.lightIcon),
            ),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Account',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.all(0),
              leading: const Icon(FontAwesome.user_pen_solid),
              title: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
