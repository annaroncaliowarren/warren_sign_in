import 'package:flutter/material.dart';

import '../../../shared/widgets/button_sign.dart';
import '../../sign_in/sign_in_page.dart';

class BodyConfirmationRegistrationPage extends StatelessWidget {
  const BodyConfirmationRegistrationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 47,
        vertical: 80,
      ),
      child: Column(
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
          Image.network(
            'https://s3-alpha-sig.figma.com/img/f1c6/12f6/fdede345879b37a4ab223a93c354975d?Expires=1662940800&Signature=hexp3oj7HJvIpCU6-7dFp-E2UWCXPaxNWGrelAoqp2UCnTc7AXbjyMLo5rVI6gUzfI9LodsXgX2jiOhSepey8sVSZZ5t6aEvNJs1p7D55~0t4-19yTjpLX10xmdLgxiewXmopAt60j1yGIITmNX~TzLRR2onTMNiUddLfhNrSuF5v0rgTbFBbTjwHfvHKf-gOQ7fgWBxxzBYEkob21JE5vmk42krdqLj62bBaUeoCmy6mHbDX8of-x4t7pg186Y-OfD9~0jL1a5lfrj1BjNTGGVtWUhefL-lcW9zK9JAFE3Phqrf6AMTT-JwYXpXN633kbQ4BLv8DYJT1ywNf~OnpQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
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
          const Text(
            'maykondgranemann@gmail.com',
            style: TextStyle(
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
      ),
    );
  }
}
