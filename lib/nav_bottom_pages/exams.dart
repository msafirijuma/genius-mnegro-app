import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mnegro_app/exams_pages/form_two/mock_form_two.dart';
import '../exams_pages/form_five_exams.dart';
import '../exams_pages/form_four/mock_form_four.dart';
import '../exams_pages/form_four/necta_form_four.dart';
import '../exams_pages/form_four/solved_exams_form_four.dart';
import '../exams_pages/form_one_exams.dart';
import '../exams_pages/form_six/mock_form_six.dart';
import '../exams_pages/form_six/necta_form_six.dart';
import '../exams_pages/form_six/solved_exams_form_six.dart';
import '../exams_pages/form_six/tahossa_form_six.dart';
import '../exams_pages/form_three_exams.dart';
import '../exams_pages/form_two/necta_form_two.dart';
import '../exams_pages/form_two/solved_exams_form_two.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_category_divider.dart';
import '../widgets/custom_drawer_menu.dart';

class Exams extends StatefulWidget {
  const Exams({super.key});

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
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
              child: Center(
                  child: Text(
                "Exams",
                style: TextStyle(
                    fontFamily: "Dancing",
                    fontSize: 30.0,
                    color: Theme.of(context).colorScheme.tertiary),
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
                      builder: (context) => const FormOneExams(),
                    ),
                  );
                },
                leading: const Icon(Icons.class_),
                title: Text('Form One',
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
              child: ExpansionTile(
                tilePadding: const EdgeInsets.all(8),
                title: Text("Form Two",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary)),
                textColor: Colors.black87,
                leading: const Icon(Icons.class_),
                //add icon
                childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                //children padding
                children: [
                  ListTile(
                    title: const Text("Solved Series"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SolvedExamsFormTwo(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("NECTA"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const NectaFormTwoExams(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("Mock Exams"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormTwoMockExams(),
                        ),
                      );
                    },
                  ),
                ],
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
                      builder: (context) => const FormThreeExams(),
                    ),
                  );
                },
                leading: const Icon(Icons.class_),
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
              child: ExpansionTile(
                tilePadding: const EdgeInsets.all(8),
                title: Text("Form Four",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary)),
                textColor: Colors.black87,
                leading: const Icon(Icons.class_),
                //add icon
                childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                //children padding
                children: [
                  ListTile(
                    title: const Text("Solved Series"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormFourSolvedExams(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("Necta"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormFourNectaExams(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("Mock"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormFourMockExams(),
                        ),
                      );
                    },
                  ),
                ],
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
                      builder: (context) => const FormFiveExams(),
                    ),
                  );
                },
                leading: const Icon(Icons.class_),
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
              child: ExpansionTile(
                tilePadding: const EdgeInsets.all(8),
                title: Text("Form Six",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary)),
                textColor: Colors.black87,
                leading: const Icon(Icons.class_),
                //add icon
                childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                //children padding
                children: [
                  ListTile(
                    title: const Text("Solved Series"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormSixSolvedExams(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("Necta"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormSixNectaExams(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("Mock"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormSixMockExams(),
                        ),
                      );
                    },
                  ),
                  const CustomCategoryDivider(),
                  ListTile(
                    title: const Text("Tahossa"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FormSixTahossaExams(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
