import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../class_pages/form_five_class.dart';
import '../../class_pages/form_six_class.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class ALevelClasses extends StatefulWidget {
  const ALevelClasses({super.key});

  @override
  State<ALevelClasses> createState() => _ALevelClassesState();
}

class _ALevelClassesState extends State<ALevelClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
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
                "A Level",
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
                      builder: (context) => const FormFiveClass(),
                    ),
                  );
                },
                title: Text(
                  'Form Five',
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
                      builder: (context) => const FormSixClass(),
                    ),
                  );
                },
                title: Text(
                  'Form Six',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.tertiary),
                ),
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
