import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../widgets/custom_app_bar.dart';

class BAMMock extends StatefulWidget {
  const BAMMock({super.key});

  @override
  State<BAMMock> createState() => _BAMMockState();
}

class _BAMMockState extends State<BAMMock> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                    "BAM Mock",
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
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const FormFiveClass(),
                          //   ),
                          // );
                        },
                        title: const Text('Sample 01'),
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
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const FormSixClass(),
                          //   ),
                          // );
                        },
                        title: const Text('Sample 02'),
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
