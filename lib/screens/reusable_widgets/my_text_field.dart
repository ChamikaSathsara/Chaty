import 'package:flutter/material.dart';

import '../colors.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 207, 207, 207))),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          fillColor: const Color.fromARGB(255, 240, 240, 240),
          filled: true,
          hintText: hintText,
          hintStyle:
              const TextStyle(color: Color.fromARGB(255, 151, 151, 151))),
    );
  }
}
