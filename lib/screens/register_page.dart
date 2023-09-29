import 'package:chaty/screens/login_page1.dart';
import 'package:chaty/screens/reusable_widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class RegisterPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();

  RegisterPage({super.key});

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
              //password enter
              MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true),
              const SizedBox(height: 20),
              //password re enter
              MyTextField(
                  controller: passwordController1,
                  hintText: "Re-Enter Password",
                  obscureText: true),
              const SizedBox(height: 20),
              SizedBox(
                width: 600,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.primaryColor, // Text color
                      elevation: 3, // Button elevation (shadow)
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                      padding: const EdgeInsets.all(25)),
                  child: const Text('REGISTER'),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Allrady have an Account?"),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      // Navigate to the second page when the text is tapped
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                    },
                    child: const Text(
                      'Login Now',
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
