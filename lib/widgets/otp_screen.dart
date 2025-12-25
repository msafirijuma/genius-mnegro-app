// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:mnegro_app/nav_bottom_pages/classes.dart';
// import 'package:pinput/pinput.dart';
//
// class OTPScreen extends StatefulWidget {
//   // const OTPScreen({super.key, required this.phone});
//
//   final String phone;
//   const OTPScreen(this.phone, {super.key});
//
//   @override
//   State<OTPScreen> createState() => _OTPScreenState();
// }
//
// class _OTPScreenState extends State<OTPScreen> {
//
//   // final pinController = TextEditingController();
//   late String _verificationCode;
//   late final SmsRetriever smsRetriever;
//   late final TextEditingController pinController;
//   late final FocusNode focusNode;
//   late final GlobalKey<FormState> formKey;
//
//   @override
//   void initState() {
//     super.initState();
//     // On web, disable the browser's context menu since this example uses a custom
//     // Flutter-rendered context menu.
//     if (kIsWeb) {
//       BrowserContextMenu.disableContextMenu();
//     }
//     formKey = GlobalKey<FormState>();
//     pinController = TextEditingController();
//     focusNode = FocusNode();
//
//     /// In case you need an SMS autofill feature
//     smsRetriever = SmsRetrieverImpl(SmartAuth.instance);
//   }
//
//   @override
//   void dispose() {
//     if (kIsWeb) {
//       BrowserContextMenu.enableContextMenu();
//     }
//     pinController.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
//     const fillColor = Color.fromRGBO(243, 246, 249, 0);
//     const borderColor = Color.fromRGBO(23, 171, 144, 0.4);
//
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: const TextStyle(
//         fontSize: 22,
//         color: Color.fromRGBO(30, 60, 87, 1),
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(19),
//         border: Border.all(color: borderColor),
//       ),
//     );
//
//     /// Optionally you can use form to validate the Pinput
//     return Form(
//       key: formKey,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Directionality(
//             // Specify direction if desired
//             textDirection: TextDirection.ltr,
//             child: Pinput(
//               // You can pass your own SmsRetriever implementation based on any package
//               // in this example we are using the SmartAuth
//               smsRetriever: smsRetriever,
//               controller: pinController,
//               focusNode: focusNode,
//               defaultPinTheme: defaultPinTheme,
//               separatorBuilder: (index) => const SizedBox(width: 8),
//               validator: (value) {
//                 return value == '2222' ? null : 'Pin is incorrect';
//               },
//               hapticFeedbackType: HapticFeedbackType.lightImpact,
//               onCompleted: (pin) {
//                 debugPrint('onCompleted: $pin');
//               },
//               onChanged: (value) {
//                 debugPrint('onChanged: $value');
//               },
//               cursor: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(bottom: 9),
//                     width: 22,
//                     height: 1,
//                     color: focusedBorderColor,
//                   ),
//                 ],
//               ),
//               focusedPinTheme: defaultPinTheme.copyWith(
//                 decoration: defaultPinTheme.decoration!.copyWith(
//                   borderRadius: BorderRadius.circular(8),
//                   border: Border.all(color: focusedBorderColor),
//                 ),
//               ),
//               submittedPinTheme: defaultPinTheme.copyWith(
//                 decoration: defaultPinTheme.decoration!.copyWith(
//                   color: fillColor,
//                   borderRadius: BorderRadius.circular(19),
//                   border: Border.all(color: focusedBorderColor),
//                 ),
//               ),
//               errorPinTheme: defaultPinTheme.copyBorderWith(
//                 border: Border.all(color: Colors.redAccent),
//               ),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               focusNode.unfocus();
//               formKey.currentState!.validate();
//             },
//             child: const Text('Validate'),
//           ),
//         ],
//       ),
//     );
//   }
//   // package to retrieve the SMS code. We are using SmartAuth
//   Future<void> verifyPhoneNumber() async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//         phoneNumber: '+1${widget.phone}',
//         timeout: const Duration(seconds: 120),
//         codeAutoRetrievalTimeout: (String verificationId) {
//           setState(() {
//             _verificationCode = verificationId;
//           });
//         },
//         codeSent: (String verificationId, int? forceResendingToken) {
//           setState(() {
//             _verificationCode = verificationId;
//           });
//         },
//         verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
//           await FirebaseAuth.instance
//               .signInWithCredential(phoneAuthCredential)
//               .then((value) async {
//             if (value.user != null) {
//               print('user login');
//             }
//           });
//         },
//         verificationFailed: (FirebaseAuthException error) {
//           print(error.message);
//         });
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     verifyPhoneNumber();
//   }
// }
