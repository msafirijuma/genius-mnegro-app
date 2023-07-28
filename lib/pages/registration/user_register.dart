import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mnegro_app/widgets/custom_app_bar.dart';
import '../../widgets/otp_screen.dart';
import 'user_login.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Define global key (form)
  final formKey = GlobalKey<FormState>();

  FocusNode focusNode = FocusNode();

  // Controlling form registration
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 25, fontFamily: 'Lato'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: usernameController,
                    style: TextStyle(
                      color: Colors.teal[400],
                    ),
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        prefixIcon: const Icon(
                          FontAwesome.user,
                          color: Colors.teal,
                        ),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Lato",
                            color: Theme.of(context).colorScheme.outline)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter username";
                      } else if (value.length < 2) {
                        return "Atleast 2 characters are required";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: IntlPhoneField(
                    controller: phoneController,
                    focusNode: focusNode,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    languageCode: "en",
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   SnackBar(
                        //     backgroundColor:
                        //         Theme.of(context).colorScheme.primary,
                        //     duration: const Duration(seconds: 3),
                        //     content: const Text("Submiting"),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) =>
                                OTPScreen(phoneController.text)),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor: Colors.red,
                                duration: Duration(seconds: 3),
                                content: Text("Wrong details!")));
                      }
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already a member?',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.teal, fontSize: 18.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
