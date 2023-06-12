import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_category_divider.dart';

class FormThreeClass extends StatefulWidget {
  const FormThreeClass({super.key});

  @override
  State<FormThreeClass> createState() => _FormThreeClassState();
}

class _FormThreeClassState extends State<FormThreeClass> {
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
                  "Form Three",
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
                      title: const Text("Topic 1 : Relations"),
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
                      title: const Text("Topic 2 : Functions"),
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
                      title: const Text("Topic 3 : Statistics"),
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
                      title: const Text("Topic 4 : Rates & Variations"),
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
                      title: const Text("Topic 5 : Sequence & Series"),
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
                      title: const Text("Topic 6 : Circles"),
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
                      title: const Text("Topic 7 : The Earth as a sphere"),
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
                      title: const Text("Topic 8 : Accounts"),
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
                      title: const Text("Functions"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SolvedSeriesExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Statistics"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const NectaExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Sequence & Series"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Circles"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Accounts"),
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
