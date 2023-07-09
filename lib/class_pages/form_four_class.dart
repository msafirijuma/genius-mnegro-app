import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_category_divider.dart';

class FormFourClass extends StatefulWidget {
  const FormFourClass({super.key});

  @override
  State<FormFourClass> createState() => _FormFourClassState();
}

class _FormFourClassState extends State<FormFourClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 0),
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                height: 120,
                color: Theme.of(context).colorScheme.secondary,
                child: const Center(
                    child: Text(
                  "Form Four",
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
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: ExpansionTile(
                  title: const Text("Notes"),
                  textColor: Colors.black87,
                  leading: const Icon(Icons.class_),
                  //add icon
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                  //children padding
                  children: [
                    ListTile(
                      title: const Text("Topic 1 : Coordinate Geometry"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SolvedSeriesExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 2 : Area & Perimeter"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const NectaExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 3 : Three Dimensional Figures"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 4 : Probability"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 5 : Trigonometry"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 6 : Vectors"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 7 : Matrices & Transformations"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    const CustomCategoryDivider(),
                    ListTile(
                      title: const Text("Topic 8 : Linear Programming"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
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
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: ExpansionTile(
                  title: const Text("Videos"),
                  textColor: Colors.black87,
                  leading: const Icon(Icons.class_),
                  //add icon
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                  //children padding
                  children: [
                    ListTile(
                      title: const Text("Three Dimensional Figures"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SolvedSeriesExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Probability"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const NectaExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Vectors"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Matrices"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Linear Programming"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
