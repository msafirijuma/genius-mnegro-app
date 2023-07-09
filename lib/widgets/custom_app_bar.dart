import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mnegro_app/globals/globals.dart';
import 'package:mnegro_app/pages/setting/settings.dart';
import '../pages/registration/user_register.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(brandName),
      actions: [
        Row(
          children: [
            // IconButton(
            //     // ignore: dead_code
            //     tooltip: 'Change Theme',
            //     onPressed: () {
            //       setState(() {
            //         ThemeChanger.of(context)!.changeTheme();
            //         Globals.isDark = !(Globals.isDark);
            //       });
            //     },
            //     icon: Icon(
            //         Globals.isDark ? Globals.darkIcon : Globals.lightIcon)),
            const Text('Menu'),
            PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.login,
                            color: Colors.black87,
                          ),
                          SizedBox(width: 10),
                          Text("Become a member"),
                        ],
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(
                            FontAwesome.gear,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Settings"),
                        ],
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Logout"),
                        ],
                      ),
                    ),
                  ];
                },
                icon: const Icon(Icons.more_vert_outlined),
                onSelected: (value) {
                  if (value == 0) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  } else if (value == 1) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  } else if (value == 2) {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const LogoutPage(),
                    //   ),
                    // );
                  }
                }),
          ],
        ),
      ],
    );
  }
}
