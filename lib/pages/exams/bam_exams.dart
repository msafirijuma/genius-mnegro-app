import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../exams_pages/bam_exams/bam_mock.dart';
import '../../exams_pages/bam_exams/bam_necta.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class BAMExams extends StatefulWidget {
  const BAMExams({Key? key}) : super(key: key);

  @override
  State<BAMExams> createState() => _BAMExamsState();
}

class _BAMExamsState extends State<BAMExams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawerMenu(),
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperOne(flip: true),
            child: Container(
              height: 120,
              color: Theme.of(context).colorScheme.secondary,
              child: const Center(
                  child: Text(
                "BAM Exams",
                style: TextStyle(
                  fontFamily: "Dancing",
                  fontSize: 30.0,
                ),
              )),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: <Widget>[
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BAMNecta(),
                        ),
                      );
                    },
                    title: const Text('Necta Exams'),
                    trailing: const Icon(Icons.arrow_outward_rounded),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                margin: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary),
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BAMMock(),
                        ),
                      );
                    },
                    title: const Text('Mock Exams'),
                    trailing: const Icon(Icons.arrow_outward_rounded),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
