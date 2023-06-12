import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_category_divider.dart';

class FormOneClass extends StatefulWidget {
  const FormOneClass({super.key});

  @override
  State<FormOneClass> createState() => _FormOneClassState();
}

class _FormOneClassState extends State<FormOneClass> {
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
                  "Form One",
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
                decoration: BoxDecoration(color: Colors.tealAccent.shade100),
                child: ExpansionTile(
                  title: const Text("Notes"),
                  textColor: Colors.black87,
                  leading: const Icon(Icons.class_),
                  //add icon
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                  //children padding
                  children: [
                    ListTile(
                      title: const Text("Topic 1 : Numbers"),
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
                      title: const Text("Topic 2 : Fractions"),
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
                      title: const Text("Topic 3 : Decimals & Percentages"),
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
                      title: const Text("Topic 4 : Units"),
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
                      title: const Text("Topic 5 : Approximations"),
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
                      title: const Text("Topic 6 : Geometry"),
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
                      title: const Text("Topic 7 : Algebra"),
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
                      title: const Text("Topic 8 : Numbers II"),
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
                      title: const Text("Topic 9 : Ratio, Profit & Loss"),
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
                      title: const Text("Topic 10 : Coordinate Geometry"),
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
                      title: const Text("Topic 11 : Perimeters & Areas"),
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
                decoration: BoxDecoration(color: Colors.tealAccent.shade100),
                child: ExpansionTile(
                  title: const Text("Videos"),
                  textColor: Colors.black87,
                  leading: const Icon(Icons.class_),
                  //add icon
                  childrenPadding: const EdgeInsets.symmetric(horizontal: 10),
                  //children padding
                  children: [
                    ListTile(
                      title: const Text("Numbers"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const SolvedSeriesExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Fractions"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const NectaExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Decimals & Percentages"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Units"),
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const MockExams(),
                        //   ),
                        // );
                      },
                    ),
                    ListTile(
                      title: const Text("Approximations"),
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
