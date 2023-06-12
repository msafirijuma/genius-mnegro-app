import 'package:flutter/material.dart';
import 'package:mnegro_app/widgets/custom_app_bar.dart';
import '../../class_pages/form_five_class.dart';
import '../../class_pages/form_six_class.dart';
import '../../widgets/custom_drawer_menu.dart';

class ALevelClasses extends StatefulWidget {
  const ALevelClasses({Key? key}) : super(key: key);

  @override
  State<ALevelClasses> createState() => _ALevelClassesState();
}

class _ALevelClassesState extends State<ALevelClasses> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: const CustomAppBar(),
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
                      builder: (context) => const FormFiveClass()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Center(
                    child: Text(
                      'Form 5',
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
                      builder: (context) => const FormSixClass()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Center(
                    child: Text(
                      'Form 6',
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
        ));
  }
}
