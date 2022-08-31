import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infra/providers/user_provider.dart';
import '../../../shared/widgets/button_sign.dart';
import '../../sign_in/sign_in_page.dart';

class ColumnBodyConfirmationRegistration extends HookConsumerWidget {
  const ColumnBodyConfirmationRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {    
    return Column(
      children: [
        const Text(
          'Your registration was successful!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
        Image.asset(
          'assets/images/check.png',
          height: 130,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 10,
          ),
          child: Text(
            'Your registration was successful and we have sent you a confirmation receipt to your email at:',
            style: TextStyle(
              color: Color.fromRGBO(172, 172, 173, 1),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          ref.read(emailControllerProvider.state).state.text,
          style: const TextStyle(
            color: Color.fromRGBO(172, 172, 173, 1),
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.08),
        ButtonSign(
          title: 'SIGN IN',
          sizeFont: 20,
          isPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
