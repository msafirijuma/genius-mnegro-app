import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../class_pages/form_four_class.dart';
import '../../class_pages/form_one_class.dart';
import '../../class_pages/form_three_class.dart';
import '../../class_pages/form_two_class.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class OLevelExams extends StatefulWidget {
  const OLevelExams({super.key});

  @override
  State<OLevelExams> createState() => _OLevelExamsState();
}

class _OLevelExamsState extends State<OLevelExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawerMenu(),
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(flip: true),
            child: Container(
              height: 120,
              color: Theme.of(context).colorScheme.secondary,
              child: const Center(
                  child: Text(
                "O Level Exams",
                style: TextStyle(
                  fontFamily: "Dancing",
                  fontSize: 30.0,
                ),
              )),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: <Widget>[
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormOneClass(),
                        ),
                      );
                    },
                    title: const Text('Form One'),
                    trailing: const Icon(Icons.arrow_outward_rounded),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormTwoClass(),
                        ),
                      );
                    },
                    title: const Text('Form Two'),
                    trailing: const Icon(Icons.arrow_outward_rounded),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormThreeClass(),
                        ),
                      );
                    },
                    title: const Text('Form Three'),
                    trailing: const Icon(Icons.arrow_outward_rounded),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormFourClass(),
                        ),
                      );
                    },
                    title: const Text('Form Four'),
                    trailing: const Icon(Icons.arrow_outward_rounded),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
