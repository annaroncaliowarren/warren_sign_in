import 'package:flutter/material.dart';

import 'column_body_sign_in.dart';

class BodySignInPage extends StatelessWidget {
  const BodySignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 48,
        vertical: 40,
      ),
      child: ColumnBodySignIn(),
    );
  }
}

