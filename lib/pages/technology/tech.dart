import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_drawer_menu.dart';

class TechPage extends StatefulWidget {
  const TechPage({super.key});

  @override
  State<TechPage> createState() => _TechPageState();
}

class _TechPageState extends State<TechPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawerMenu(),
        body: ListView(
          children: [
            ClipPath(
              clipper: WaveClipperOne(flip: true),
              child: Container(
                height: 120,
                color: Theme.of(context).colorScheme.secondary,
                child: const Center(
                    child: Text(
                  "Technology Tips",
                  style: TextStyle(
                    fontFamily: "Dancing",
                    fontSize: 30.0,
                  ),
                )),
              ),
            ),
            Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        'ChatGPT Tips',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 22)),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_outward_rounded),
                        label: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.teal[300],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Google Accounts',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: Colors.teal[400],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 22)),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_outward_rounded),
                        label: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.teal[300],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Artificial Intelligence (A.I)',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: Colors.teal[400],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 22)),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_outward_rounded),
                        label: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.teal[300],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Become Software Developer',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: Colors.teal[400],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 22)),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_outward_rounded),
                        label: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.teal[300],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Before you buy laptop.',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          color: Colors.teal[400],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                      const SizedBox(
                        height: 20,
                      ),
                      OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 22)),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_outward_rounded),
                        label: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.teal[300],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
