import 'package:flutter/material.dart';

import '../../../shared/widgets/button_sign.dart';
import '../../../shared/widgets/row_icons_button.dart';
import '../../create_account/create_account_page.dart';

class BodySignInPage extends StatelessWidget {
  const BodySignInPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 48,
        vertical: 40,
      ),
      child: Column(
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
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
                size: 24,
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Color.fromRGBO(75, 14, 136, 1),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 18),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock_outline_sharp,
                size: 24,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Color.fromRGBO(75, 14, 136, 1),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
            ),
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
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CreateAccountPage(),
                ),
              );
            },
            child: const Text(
              'SIGN UP',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                decoration: TextDecoration.underline,
                fontSize: 20,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
