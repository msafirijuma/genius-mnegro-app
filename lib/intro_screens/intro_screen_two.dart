import 'package:flutter/material.dart';

class IntroScreenTwo extends StatefulWidget {
  const IntroScreenTwo({super.key});

  @override
  State<IntroScreenTwo> createState() => _IntroScreenTwoState();
}

class _IntroScreenTwoState extends State<IntroScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Image.asset('images/girl-studying.png'),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Notes & Tutorials',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  textAlign: TextAlign.center,
                  "Our App is designed and developed to help you master Mathematics for both O Level and A Level. With our interactive notes you will be able to master Mathemiatics in no time.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
