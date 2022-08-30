import 'package:flutter/material.dart';

import '../../../infra/models/user_model.dart';
import '../../../infra/repositories/user_repository.dart';
import '../../../shared/widgets/button_sign.dart';
import '../../../shared/widgets/row_icons_button.dart';
import '../../../shared/widgets/text_button_sign.dart';
import '../../confirmation_registration/confirmation_registration_page.dart';
import '../../sign_in/sign_in_page.dart';
import 'text_form_field_create.dart';

class ColumnBodyCreateAccount extends StatelessWidget {
  ColumnBodyCreateAccount({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        TextFormFieldCreate(
          title: 'Name',
          icon: Icons.person_outline,
          controller: nameController,
        ),
        const SizedBox(height: 16),
        TextFormFieldCreate(
          title: 'Email',
          icon: Icons.email_outlined,
          controller: emailController,
        ),
        const SizedBox(height: 16),
        TextFormFieldCreate(
          title: 'Password',
          icon: Icons.lock_outline_sharp,
          controller: passwordController,
        ),
        const SizedBox(height: 16),
        TextFormFieldCreate(
          title: 'Confirm Password',
          icon: Icons.lock_outline_sharp,
          controller: confirmPasswordController,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        ButtonSign(
          title: 'SIGN UP',
          sizeFont: 15,
          isPressed: () {
            if (passwordController.text == confirmPasswordController.text) {
              UserModel user = UserModel(
                email: emailController.text,
                senha: passwordController.text,
                nome: nameController.text,
              );

              UserRepository.post(user);
            } else {
              return; 
            }

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
        TextButtonSign(
          title: 'SIGN IN',
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
