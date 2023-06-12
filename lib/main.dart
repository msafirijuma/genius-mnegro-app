// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:mnegro_app/nav_bottom_pages/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_screens/intro_screen_one.dart';
import 'intro_screens/intro_screen_three.dart';
import 'intro_screens/intro_screen_two.dart';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins',
          ),
          home: const MyApp()),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 2);
              });
            },
            children: const [
              IntroScreenOne(),
              IntroScreenTwo(),
              IntroScreenThree(),
            ],
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                isLastPage
                    ? Container(
                        // alignment: const Alignment(0, 0.5),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Text('Get Started'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const Homepage())));
                            }),
                      )
                    : Container(
                        alignment: const Alignment(0, 0.5),
                        child: GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.bounceInOut);
                          },
                          child: Container(
                            alignment: const Alignment(0, 1),
                            child: const Icon(
                              Icons.arrow_circle_right_outlined,
                              color: Colors.blueAccent,
                              weight: 20.0,
                              size: 50.0,
                            ),
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: const Alignment(0, 1),
                  child: SmoothPageIndicator(
                      onDotClicked: (index) {
                        setState(() {
                          if (index == 0) {
                            _controller.jumpToPage(0);
                          } else if (index == 1) {
                            _controller.jumpToPage(1);
                          } else {
                            _controller.jumpToPage(2);
                          }
                        });
                      },
                      effect: const ExpandingDotsEffect(
                        activeDotColor: Colors.blueAccent,
                        dotColor: Colors.grey,
                      ),
                      controller: _controller,
                      count: 3),
                )
              ],
            ),
          ),
          // Smooth page indicator
        ],
      ),
    );
  }
}
