import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infra/models/user_model.dart';
import '../../../infra/providers/user_provider.dart';
import '../../../infra/repositories/user_repository.dart';
import '../../../shared/widgets/button_sign.dart';
import '../../../shared/widgets/row_icons_button.dart';
import '../../../shared/widgets/text_button_sign.dart';
import '../../confirmation_registration/confirmation_registration_page.dart';
import '../../sign_in/sign_in_page.dart';
import 'text_form_field_create.dart';

class ColumnBodyCreateAccount extends HookConsumerWidget {
  const ColumnBodyCreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = ref.watch(nameControllerProvider.state);
    final emailController = ref.watch(emailControllerProvider.state);
    final passwordController = ref.watch(passwordControllerProvider.state);
    final confirmPasswordController = ref.watch(confirmPasswordControllerProvider.state);

    void clearController() {
      nameController.state.clear();
      passwordController.state.clear();
      confirmPasswordController.state.clear();
    }

    void signUp() {
      if (nameController.state.text == "") {
        return;
      } else if (emailController.state.text == "") {
        return;
      } else if (passwordController.state.text == "") {
        return;
      } else if (passwordController.state.text == confirmPasswordController.state.text) {
        UserModel user = UserModel(
          email: emailController.state.text,
          senha: passwordController.state.text,
          nome: nameController.state.text,
        );

        UserRepository.post(user);

        clearController();

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ConfirmationRegistrationPage(),
          ),
        );
      } else {
        return;
      }
    }

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
          controller: nameController.state,
          isObscured: false,
        ),
        const SizedBox(height: 16),
        TextFormFieldCreate(
          title: 'Email',
          icon: Icons.email_outlined,
          controller: emailController.state,
          isObscured: false,
        ),
        const SizedBox(height: 16),
        TextFormFieldCreate(
          title: 'Password',
          icon: Icons.lock_outline_sharp,
          controller: passwordController.state,
          isObscured: true,
        ),
        const SizedBox(height: 16),
        TextFormFieldCreate(
          title: 'Confirm Password',
          icon: Icons.lock_outline_sharp,
          controller: confirmPasswordController.state,
          isObscured: true,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        ButtonSign(
          title: 'SIGN UP',
          sizeFont: 15,
          isPressed: () {
            signUp();
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
