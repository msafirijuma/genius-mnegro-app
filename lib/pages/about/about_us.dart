import 'package:flutter/material.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_drawer_menu.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({super.key});

  @override
  State<AboutAppPage> createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.background,
      appBar: CustomAppBar(),
      drawer: CustomDrawerMenu(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
        child: Center(
          child: Column(
            children: [
              // Header
              Text(
                'About App',
                style: TextStyle(
                  color: Colors.teal,
                  fontFamily: 'Dancing',
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // description about app
              Text(
                'Welcome to our amazing platform! We are thrilled to have you on board. Our stunning tutorials and notes are designed to guide you on embarking Mathematics in every angle. With our intercative lessons, experienced instructor, and support from our team, you will be able to achieve your learning and mastering Mathematics in no time.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Mission & Vision',
                style: TextStyle(
                  fontFamily: 'Dancing',
                  fontSize: 30.0,
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'To help Secondary Students to access educational resources such as notes, past papers, tutorials and books by means of digital platform which will help them to have resources anywhere through web, tablets and smartphones.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
