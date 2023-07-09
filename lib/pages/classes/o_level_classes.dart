import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const CustomDrawerMenu(),
      body: ListView(
        children: <Widget>[
          ClipPath(
            clipper: WaveClipperOne(flip: true),
            child: Container(
              height: 120,
              color: Theme.of(context).colorScheme.secondary,
              child: const Center(
                  child: Text(
                "O Level",
                style: TextStyle(
                  fontFamily: "Dancing",
                  fontSize: 30.0,
                ),
              )),
            ),
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FormOneClass(),
                    ),
                  );
                },
                title: Text(
                  'Form One',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.tertiary),
                ),
                trailing: const Icon(Icons.arrow_outward_rounded),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FormTwoClass(),
                    ),
                  );
                },
                title: Text('Form Two',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary)),
                trailing: const Icon(Icons.arrow_outward_rounded),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FormThreeClass(),
                    ),
                  );
                },
                title: Text('Form Three',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary)),
                trailing: const Icon(Icons.arrow_outward_rounded),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FormFourClass(),
                    ),
                  );
                },
                title: Text('Form Four',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary)),
                trailing: const Icon(Icons.arrow_outward_rounded),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
