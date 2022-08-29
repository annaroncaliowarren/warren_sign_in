import 'package:flutter/material.dart';

import 'presenter/sign_in/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Trabalho Warren',
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}
