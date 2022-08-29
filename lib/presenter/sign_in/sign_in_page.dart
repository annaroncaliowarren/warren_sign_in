import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(75, 14, 136, 1),
      body: SingleChildScrollView(
        child: Padding(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton.mini(
                    buttonType: ButtonType.linkedin,
                    onPressed: () {},
                  ),
                  SignInButton.mini(
                    buttonType: ButtonType.google,
                    onPressed: () {},
                  ),
                  SignInButton.mini(
                    buttonType: ButtonType.github,
                    onPressed: () {},
                  ),
                ],
              ),
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
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              MaterialButton(
                onPressed: () {},
                minWidth: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 13),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 14, 136, 1),
                    fontSize: 20,
                  ),
                ),
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
                onPressed: () {},
                child: const Text('SIGN UP'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
