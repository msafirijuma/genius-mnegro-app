import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
// import 'package:share/share.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_drawer_menu.dart';

class ShareApp extends StatefulWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  State<ShareApp> createState() => _ShareAppState();
}

class _ShareAppState extends State<ShareApp> {
  @override
  Widget build(BuildContext context) {
    String textOne =
        "If you found our app very useful, please invite your friends and let's them enjoy as you do.";
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textOne,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    backgroundColor: Colors.teal,
                    maximumSize: const Size(200, 50),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () {
                  Share.share('ourmobileapplink');
                },
                child: const Text('Share App'))
          ],
        ),
      ),
    );
  }
}
