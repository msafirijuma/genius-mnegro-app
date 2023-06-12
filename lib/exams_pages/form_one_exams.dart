import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:mnegro_app/widgets/custom_app_bar.dart';

class FormOneExams extends StatefulWidget {
  const FormOneExams({super.key});

  @override
  State<FormOneExams> createState() => _FormOneExamsState();
}

class _FormOneExamsState extends State<FormOneExams> {
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
                  "Solved Exams",
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
                'Form 1',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ));
  }
}
