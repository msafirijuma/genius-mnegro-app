import 'package:flutter/material.dart';
import '../class_pages/form_five_class.dart';
import '../class_pages/form_four_class.dart';
import '../class_pages/form_one_class.dart';
import '../class_pages/form_six_class.dart';
import '../class_pages/form_three_class.dart';
import '../class_pages/form_two_class.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer_menu.dart';

void main() => runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: Classes()),
    );

class Classes extends StatefulWidget {
  const Classes({super.key});

  @override
  State<Classes> createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: const CustomDrawerMenu(),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: <Widget>[
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
                title: Text('Form Five',
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
                      builder: (context) => const FormSixClass(),
                    ),
                  );
                },
                title: Text('Form Six',
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
