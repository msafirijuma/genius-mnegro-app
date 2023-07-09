import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../widgets/custom_app_bar.dart';

class FormFourMockExams extends StatefulWidget {
  const FormFourMockExams({super.key});

  @override
  State<FormFourMockExams> createState() => _FormFourMockExamsState();
}

class _FormFourMockExamsState extends State<FormFourMockExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          children: [
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                height: 120,
                color: Theme.of(context).colorScheme.secondary,
                child: const Center(
                    child: Text(
                  "Mock Exams",
                  style: TextStyle(
                    fontFamily: "Dancing",
                    fontSize: 30.0,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Sample 01',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ));
  }
}
