import 'package:flutter/material.dart';


class TextButtonSign extends StatelessWidget {
  final String title;
  final dynamic isPressed;

  const TextButtonSign({
    Key? key,
    required this.title,
    required this.isPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          decoration: TextDecoration.underline,
          fontSize: 20,
          letterSpacing: 0.5,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
