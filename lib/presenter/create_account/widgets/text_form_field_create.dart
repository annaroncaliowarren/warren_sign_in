import 'package:flutter/material.dart';

class TextFormFieldCreate extends StatelessWidget {
  final String title;
  final IconData icon;
  final TextEditingController controller;
  final bool isObscured;

  const TextFormFieldCreate({
    Key? key,
    required this.title,
    required this.icon,
    required this.controller,
    required this.isObscured,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscured ? true : false,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          size: 24,
        ),
        labelText: title,
        labelStyle: const TextStyle(
          color: Color.fromRGBO(102, 102, 102, 1),
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
