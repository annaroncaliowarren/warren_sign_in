
import 'package:flutter/material.dart';

class ButtonSign extends StatelessWidget {
  final String title;
  final dynamic isPressed;
  final double sizeFont;
  
  const ButtonSign({
    Key? key,
    required this.title,
    required this.sizeFont,
    required this.isPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: isPressed,
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 13),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      child: Text(
        title,
        style: TextStyle(
          color: const Color.fromRGBO(75, 14, 136, 1),
          fontSize: sizeFont,
        ),
      ),
    );
  }
}

