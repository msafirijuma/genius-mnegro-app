import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mnegro_app/widgets/custom_app_bar.dart';

import 'user_login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Define global key (form)
  final formKey = GlobalKey<FormState>();

  // Controlling form registration
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

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
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        prefixIcon: Icon(FontAwesome.user),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Lato",
                            color: Colors.black54)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter username";
                      } else if (value.length <= 2) {
                        return "Atleast 4 characters are required";
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
                  child: TextFormField(
                    controller: phoneController,
                    style: TextStyle(
                      color: Colors.teal[400],
                    ),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        prefixIcon: Icon(FontAwesome.phone),
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Lato",
                            color: Colors.black54)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter phone number";
                      } else if (value.length != 10) {
                        return "Incorrect phone number format";
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
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    style: TextStyle(
                      color: Theme.of(context).focusColor,
                    ),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        prefixIcon: Icon(FontAwesome.lock),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Lato",
                            color: Colors.black54)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter password";
                      } else if (value.length < 6) {
                        return "Password is atleast 6 characters are in length";
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
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.teal[400],
                    ),
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan),
                        ),
                        prefixIcon: Icon(FontAwesome.lock),
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Lato",
                            color: Colors.black54)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter passowrd";
                      } else if (value != passwordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
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
                        // toast(context, "Thanks");
                        // const AlertDialog(
                      }
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
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
