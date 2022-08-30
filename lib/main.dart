import 'package:flutter/material.dart';

import 'presenter/sign_in/sign_in_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Trabalho Warren',
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

