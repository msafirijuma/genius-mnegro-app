import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../widgets/custom_app_bar.dart';

class FormSixMockExams extends StatefulWidget {
  const FormSixMockExams({super.key});

  @override
  State<FormSixMockExams> createState() => _FormSixMockExamsState();
}

class _FormSixMockExamsState extends State<FormSixMockExams> {
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
                color: Colors.tealAccent[100],
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