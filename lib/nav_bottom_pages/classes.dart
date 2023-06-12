import 'package:flutter/material.dart';
import '../class_pages/form_five_class.dart';
import '../class_pages/form_four_class.dart';
import '../class_pages/form_one_class.dart';
import '../class_pages/form_six_class.dart';
import '../class_pages/form_three_class.dart';
import '../class_pages/form_two_class.dart';
import '../widgets/custom_drawer_menu.dart';

void main() => runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: Classes()),
    );

class Classes extends StatefulWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  State<Classes> createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: <Widget>[
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration: const BoxDecoration(color: Colors.tealAccent),
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
              decoration: const BoxDecoration(color: Colors.tealAccent),
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
              decoration: const BoxDecoration(color: Colors.tealAccent),
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
              decoration: const BoxDecoration(color: Colors.tealAccent),
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
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration: const BoxDecoration(color: Colors.tealAccent),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FormFiveClass(),
                    ),
                  );
                },
                title: const Text('Form Five'),
                trailing: const Icon(Icons.arrow_outward_rounded),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Container(
              decoration: const BoxDecoration(color: Colors.tealAccent),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const FormSixClass(),
                    ),
                  );
                },
                title: const Text('Form Six'),
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
