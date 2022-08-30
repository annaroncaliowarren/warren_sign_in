import 'package:flutter/material.dart';

class TextFormFieldSignIn extends StatelessWidget {
  final String title;
  final IconData icon;
  final TextEditingController controller;

  const TextFormFieldSignIn({
    Key? key,
    required this.title,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          size: 24,
        ),
        labelText: title,
        labelStyle: const TextStyle(
          color: Color.fromRGBO(75, 14, 136, 1),
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none,
      ),
    );
  }
}
