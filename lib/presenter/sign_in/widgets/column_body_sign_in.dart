import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sign_in_warren/infra/providers/user_provider.dart';

import '../../../shared/widgets/button_sign.dart';
import '../../../shared/widgets/row_icons_button.dart';
import '../../../shared/widgets/text_button_sign.dart';
import '../../create_account/create_account_page.dart';
import 'text_form_field_sign_in.dart';

class ColumnBodySignIn extends HookConsumerWidget {
  const ColumnBodySignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = ref.watch(emailControllerProvider.state);
    final passwordController = ref.watch(passwordControllerProvider.state);

    return Column(
      children: [
        const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        const RowIconsButton(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        const Text(
          'or use your email account',
          style: TextStyle(
            color: Color.fromRGBO(172, 172, 173, 1),
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 18),
        TextFormFieldSignIn(
          controller: emailController.state,
          title: 'Email',
          icon: Icons.email_outlined,
          isObscured: false,
        ),
        const SizedBox(height: 18),
        TextFormFieldSignIn(
          controller: passwordController.state,
          title: 'Password',
          icon: Icons.lock_outline_sharp,
          isObscured: true,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot your password?',
            style: TextStyle(
              color: Color.fromRGBO(172, 172, 173, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        ButtonSign(
          title: 'SIGN IN',
          sizeFont: 20,
          isPressed: () {},
        ),
        const Padding(
          padding: EdgeInsets.only(
            right: 50,
            left: 47,
            top: 30,
            bottom: 9.11,
          ),
          child: Text(
            'Enter your personal details and start journey with us',
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextButtonSign(
          title: 'SIGN UP',
          isPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CreateAccountPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
