import 'package:flutter/material.dart';
// import 'package:icons_plus/icons_plus.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mnegro_app/widgets/custom_app_bar.dart';

import 'user_register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define global key (form)
  final formKey = GlobalKey<FormState>();

  FocusNode focusNode = FocusNode();

  // Control fields
  final phoneNumberController = TextEditingController();

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
                  'Login',
                  style: TextStyle(fontSize: 25, fontFamily: 'Lato'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 16, fontFamily: 'Lato'),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: IntlPhoneField(
                    controller: phoneNumberController,
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 16.0,
                        ),
                      ),
                    )
                  ],
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
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            duration: const Duration(seconds: 3),
                            content: const Text("Submiting")));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            duration: const Duration(seconds: 3),
                            content: const Text("Wrong details!")));
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.outline),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not yet a member?',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegisterPage())),
                      child: const Text(
                        'Register',
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
