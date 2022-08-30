import 'package:flutter/material.dart';

import 'widgets/body_create_account_page.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(75, 14, 136, 1),
      body: SingleChildScrollView(
        child: BodyCreateAccountPage(),
      ),
    );
  }
}

