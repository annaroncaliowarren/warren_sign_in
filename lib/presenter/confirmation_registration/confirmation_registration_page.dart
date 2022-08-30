import 'package:flutter/material.dart';

import 'widgets/body_confirmation_registration_page.dart';

class ConfirmationRegistrationPage extends StatelessWidget {
  const ConfirmationRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(75, 14, 136, 1),
      body: SingleChildScrollView(
        child: BodyConfirmationRegistrationPage(),
      ),
    );
  }
}

