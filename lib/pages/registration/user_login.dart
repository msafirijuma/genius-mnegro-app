import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:mnegro_app/widgets/custom_app_bar.dart';

import 'user_register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Center(
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
                child: TextFormField(
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
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
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
                ),
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
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
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
    );
  }
}
