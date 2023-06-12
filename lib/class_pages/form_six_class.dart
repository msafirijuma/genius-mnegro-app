import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_category_divider.dart';

class FormSixClass extends StatefulWidget {
  const FormSixClass({super.key});

  @override
  State<FormSixClass> createState() => _FormSixClassState();
}

class _FormSixClassState extends State<FormSixClass> {
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
                color: Colors.tealAccent[100],
                child: const Center(
                    child: Text(
                  "Form Six",
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
                decoration: const BoxDecoration(color: Colors.tealAccent),
                child: ExpansionTile(
                  title: const Text("Notes"),
                  textColor: Colors.black87,
                  leading: const Icon(Icons.class_),
                  //add icon
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                  //children padding
                  children: [
                    ListTile(
                      title: const Text("Topic 1 : Hyperbolic Function"),
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
                      title: const Text("Topic 2 : Vector Analysis"),
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
                      title: const Text("Topic 3 : Numerical Method"),
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
                      title: const Text("Topic 4 : Complex Number"),
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
                      title: const Text("Topic 5 : Differential Equation"),
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
                      title: const Text("Topic 6 : Coordinate Geometry II"),
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
                      title: const Text("Topic 7 : Statistics I"),
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
                      title: const Text("Topic 8 : Probability"),
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
                decoration: const BoxDecoration(color: Colors.tealAccent),
                child: ExpansionTile(
                  title: const Text("Videos"),
                  textColor: Colors.black87,
                  leading: const Icon(Icons.class_),
                  //add icon
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                  //children padding
                  children: [
                    ListTile(
                      title: const Text("Hyperbolic Functions"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SolvedSeriesExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Numerical Method"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const NectaExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Complex Numbers"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Differential Equations"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Probability"),
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
