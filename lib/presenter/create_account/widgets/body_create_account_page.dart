import 'package:flutter/material.dart';

import 'column_body_create_account.dart';

class BodyCreateAccountPage extends StatelessWidget {
  const BodyCreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 47,
        vertical: 35,
      ),
      child: ColumnBodyCreateAccount(),
    );
  }
}
