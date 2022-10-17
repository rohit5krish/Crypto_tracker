import 'package:flutter/material.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/presentation/signup/functionalities/signup_button_click.dart';
import 'package:triveous_machine_test/presentation/widgets/button_widget.dart';
import 'package:triveous_machine_test/presentation/widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  final TextEditingController confirmPassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Create an Account',
              style: blackTxt20B,
            ),
            sbHeight20,
            CustomTextField(
                screenSize: screenSize, labelTxt: 'Email', txtCtrl: emailCtrl),
            sbHeight10,
            CustomTextField(
                screenSize: screenSize,
                labelTxt: 'Password',
                txtCtrl: passCtrl),
            sbHeight10,
            CustomTextField(
              screenSize: screenSize,
              labelTxt: 'Confirm Password',
              txtCtrl: confirmPassCtrl,
              obscure: true,
            ),
            sbHeight20,
            InkWell(
              onTap: () async {
                return await signupButttonClick(
                    email: emailCtrl.text.trim(),
                    pass: passCtrl.text.trim(),
                    confirmPass: confirmPassCtrl.text.trim(),
                    context: context);
              },
              child: ButtonWidget(
                  screenSize: screenSize,
                  buttonTxt: 'Signup',
                  buttonClr: defaultColor),
            )
          ],
        ),
      )),
    );
  }
}
