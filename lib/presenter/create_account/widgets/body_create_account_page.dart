import 'package:flutter/material.dart';

import '../../../shared/widgets/button_sign.dart';
import '../../../shared/widgets/row_icons_button.dart';
import '../../confirmation_registration/confirmation_registration_page.dart';
import '../../sign_in/sign_in_page.dart';

class BodyCreateAccountPage extends StatelessWidget {
  const BodyCreateAccountPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 47,
        vertical: 35,
      ),
      child: Column(
        children: [
          const Text(
            'Create Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          const RowIconsButton(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          const Text(
            'or use your email for registration',
            style: TextStyle(
              color: Color.fromRGBO(172, 172, 173, 1),
              fontSize: 18,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.person_outline,
                size: 24,
              ),
              labelText: 'Name',
              labelStyle: const TextStyle(
                color: Color.fromRGBO(102, 102, 102, 1),
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.email_outlined,
                size: 24,
              ),
              labelText: 'Email',
              labelStyle: const TextStyle(
                color: Color.fromRGBO(102, 102, 102, 1),
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.lock_outline_sharp,
                size: 24,
              ),
              labelText: 'Password',
              labelStyle: const TextStyle(
                color: Color.fromRGBO(102, 102, 102, 1),
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.lock_outline_sharp,
                size: 24,
              ),
              labelText: 'Confirm Password',
              labelStyle: const TextStyle(
                color: Color.fromRGBO(102, 102, 102, 1),
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ButtonSign(
            title: 'SIGN UP',
            sizeFont: 15,
            isPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ConfirmationRegistrationPage(),
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 10,
              left: 10,
              top: 20,
              bottom: 9.11,
            ),
            child: Text(
              'To keep connected with us please login with your personal info',
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
                  builder: (context) => const SignInPage(),
                ),
              );
            },
            child: const Text(
              'SIGN IN',
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
