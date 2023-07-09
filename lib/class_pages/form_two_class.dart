import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mnegro_app/widgets/custom_category_divider.dart';
import '../widgets/custom_app_bar.dart';

class FormTwoClass extends StatefulWidget {
  const FormTwoClass({super.key});

  @override
  State<FormTwoClass> createState() => _FormTwoClassState();
}

class _FormTwoClassState extends State<FormTwoClass> {
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
                  "Form Two",
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
                      title: const Text("Topic 1 : Exponents & Radicals"),
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
                      title: const Text("Topic 2 : Algebra"),
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
                      title: const Text("Topic 3 : Quadratic Equations"),
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
                      title: const Text("Topic 4 : Logarithms"),
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
                      title: const Text("Topic 5 : Congruence"),
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
                      title: const Text("Topic 6 : Similarity"),
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
                      title: const Text("Topic 7 : Geometic & Transformations"),
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
                      title: const Text("Topic 8 : Pythagoras Theorem"),
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
                      title: const Text("Topic 9 : Trigonometry"),
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
                      title: const Text("Topic 10 : Sets"),
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
                      title: const Text("Topic 11 : Statistics"),
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
                      title: const Text("Quadratic Equations"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SolvedSeriesExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Logarithms"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const NectaExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Congruence"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Similarity"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Sets"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Statistics"),
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
