import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../class_pages/form_five_class.dart';
import '../../class_pages/form_six_class.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class ALevelExams extends StatefulWidget {
  const ALevelExams({Key? key}) : super(key: key);

  @override
  State<ALevelExams> createState() => _ALevelExamsState();
}

class _ALevelExamsState extends State<ALevelExams> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: const CustomAppBar(),
          drawer: const CustomDrawerMenu(),
          body: Column(
            children: [
              ClipPath(
                clipper: WaveClipperOne(flip: true),
                child: Container(
                  height: 120,
                  color: Colors.tealAccent[100],
                  child: const Center(
                      child: Text(
                    "A Level Exams",
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
                      decoration: const BoxDecoration(color: Colors.tealAccent),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const FormFiveClass(),
                            ),
                          );
                        },
                        title: const Text('Form Five'),
                        trailing: const Icon(Icons.arrow_outward_rounded),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    margin: const EdgeInsets.all(8),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.tealAccent),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const FormSixClass(),
                            ),
                          );
                        },
                        title: const Text('Form Six'),
                        trailing: const Icon(Icons.arrow_outward_rounded),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
