import 'package:flutter/material.dart';

import 'widgets/body_sign_in_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(75, 14, 136, 1),
      body: SingleChildScrollView(
        child: BodySignInPage(),
      ),
    );
  }
}

