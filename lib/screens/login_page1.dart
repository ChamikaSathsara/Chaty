import 'dart:js';

import 'package:chaty/screens/register_page.dart';
import 'package:chaty/screens/reusable_widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth/authservice.dart';

import 'colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    final authService =
        Provider.of<AuthService>(context as BuildContext, listen: false);

    try {
      await authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context as BuildContext).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Login'),
      ),*/
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),
              const SizedBox(height: 20),
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              const SizedBox(height: 20),
              SizedBox(
                width: 600,
                child: ElevatedButton(
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.primaryColor, // Text color
                      elevation: 3, // Button elevation (shadow)
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                      padding: const EdgeInsets.all(25)),
                  child: const Text('LOGIN'),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a user?"),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      // Navigate to the second page when the text is tapped
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ));
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
