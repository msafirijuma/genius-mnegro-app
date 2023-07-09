import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class BookShop extends StatefulWidget {
  const BookShop({super.key});

  @override
  State<BookShop> createState() => _BookShopState();
}

class _BookShopState extends State<BookShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawerMenu(),
        body: ListView(
          children: [
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                height: 120,
                color: Theme.of(context).colorScheme.secondary,
                child: const Center(
                    child: Text(
                  "Recommended Books",
                  style: TextStyle(
                    fontFamily: "Dancing",
                    fontSize: 30.0,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                elevation: 8.0,
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Ordinary Level',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Mastering O Level Mathemtaics subject requires you to have good resources and books in hands. So here, we've suggested some books to get you there in just a second.",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title:
                          Text('Tanzania Institute of Education Books(T.I.E)'),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title: Text(
                          'Complete Secondary Basic Mathematics by Mr Msemwa'),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title: Text('Fundamentals'),
                    ),
                  ]),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Card(
                elevation: 8,
                child: Center(
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Advanced Level',
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Mastering A Level Mathemtaics subject requires you to have good resources and books in hands. So here, we've suggested some books to get you there in just a second. Just to mention few books but you can learn from other resources as well.",
                        style: TextStyle(
                          fontFamily: "Lato",
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title:
                          Text('Tanzania Institute of Education Books (T.I.E)'),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title: Text(
                          "S Chand's Mathematics class XI & XII by H.K Dass & Dr. Rama Verma"),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title: Text(
                          'Advanced Level Pure Mathematics by C.J. Tranter'),
                    ),
                    ListTile(
                      leading: Icon(FontAwesome.arrow_right_long),
                      title: Text('Pure Mathematics 1 & 2 by J.K Backhouse'),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ]),
                ),
              ),
            )
          ],
        ));
  }
}
