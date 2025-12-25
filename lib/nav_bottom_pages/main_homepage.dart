import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:icons_plus/icons_plus.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_drawer_menu.dart';

class MainHomepage extends StatefulWidget {
  const MainHomepage({super.key});

  @override
  State<MainHomepage> createState() => _MainHomepageState();
}

class _MainHomepageState extends State<MainHomepage> {
  @override
  Widget build(BuildContext context) {
    final Uri whatsApp = Uri.parse('https://wa.me/+255687328084');
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawerMenu(),
      backgroundColor: Colors.white12,
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.teal[300],
          onPressed: () async {
            launchUrl(whatsApp);
          },
          tooltip: 'Get a quick help',
          child: const Icon(FontAwesome.whatsapp_brand)),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        children: [
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset('images/girl-studying.png'),
                    ),
                    Text(
                      'Notes & Tutorials',
                      style: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 30.0,
                        color: Colors.teal[400],
                      ),
                    ),
                    const Text(
                        'Well prepared notes and tutorials to make your roadmap to master Mathematics easy in no time. Get O level and A level  Mathematics notes by registering as a member of our community.'),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30)),
                      onPressed: () {},
                      child: Text(
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
          const SizedBox(
            height: 30,
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset('images/boy-with-laptop.png'),
                    ),
                    Text(
                      'Solved Exams & Past Papers',
                      style: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 30.0,
                        color: Colors.teal[400],
                      ),
                    ),
                    const Text(
                        "Learn how to tackle and embark Mathematics by solving many questions as you can. We've prepared solved exams plus other past papers including Mock Exams, Necta Exams etc."),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30)),
                      onPressed: () {},
                      child: Text(
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
          const SizedBox(
            height: 30,
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset(
                        'images/students.jpg',
                      ),
                    ),
                    Text(
                      'Tuition Programs',
                      style: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 30.0,
                        color: Colors.teal[400],
                      ),
                    ),
                    const Text(
                        'We offer tuition programs for both O level and A level students during holidays, home teaching and class teaching programs.'),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30)),
                      onPressed: () {},
                      child: Text(
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
          const SizedBox(
            height: 30,
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset('images/card-payment-alt.png'),
                    ),
                    Text(
                      'Membership & Payments',
                      style: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 30.0,
                        color: Colors.teal[400],
                      ),
                    ),
                    const Text(
                        'If you are interested in accessing our app, note that payment is required to gain full access to all of our resources including notes, tutorials, solved series and past papers.'),
                    const SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30)),
                      onPressed: () {},
                      child: Text(
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
          const SizedBox(
            height: 30,
          ),
          Card(
            elevation: 2.0,
            margin: const EdgeInsets.all(8),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset('images/boy-studying.png'),
                    ),
                    Text(
                      'Technology Tips',
                      style: TextStyle(
                        fontFamily: 'Dancing',
                        fontSize: 30.0,
                        color: Colors.teal[400],
                      ),
                    ),
                    const Text(
                        'Read articles concerning Technology written to help you acquire useful knowledge about tech and tech related issues like artificial intelligence, machine learning etc.'),
                    const SizedBox(
                      height: 10,
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 30)),
                      onPressed: () {},
                      child: Text(
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
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
