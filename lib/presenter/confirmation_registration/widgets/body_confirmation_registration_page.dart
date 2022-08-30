import 'package:flutter/material.dart';

import 'column_body_confirmation_registration.dart';

class BodyConfirmationRegistrationPage extends StatelessWidget {
  const BodyConfirmationRegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 47,
        vertical: 80,
      ),
      child: ColumnBodyConfirmationRegistration(),
    );
  }
}

