import 'package:flutter/material.dart';

import '../../class_pages/form_four_class.dart';
import '../../class_pages/form_one_class.dart';
import '../../class_pages/form_three_class.dart';
import '../../class_pages/form_two_class.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class OLevelClasses extends StatefulWidget {
  const OLevelClasses({Key? key}) : super(key: key);

  @override
  State<OLevelClasses> createState() => _OLevelClassesState();
}

class _OLevelClassesState extends State<OLevelClasses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: const CustomAppBar(),
          drawer: const CustomDrawerMenu(),
          body: Scaffold(
            drawer: const CustomDrawerMenu(),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormOneClass()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Center(
                      child: Text(
                        'Form 1',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormTwoClass()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Center(
                      child: Text(
                        'Form 2',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormThreeClass()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Center(
                      child: Text(
                        'Form 3',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FormFourClass()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[400],
                    child: const Center(
                      child: Text(
                        'Form 4',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
