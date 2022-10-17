import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/presentation/home/home.dart';
import 'package:triveous_machine_test/presentation/login/functionalities/login_button_click.dart';
import 'package:triveous_machine_test/presentation/signup/signup.dart';
import 'package:triveous_machine_test/presentation/widgets/button_widget.dart';
import 'package:triveous_machine_test/presentation/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController lemailCtrl = TextEditingController();
  final TextEditingController lpassCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/triveous_logo.jpg',
                    height: 150,
                    width: 150,
                  ),
                  sbHeight20,
                  Text(
                    'TRIVEOUS CRYPTO TRACKER',
                    style: blackTxt20B,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.05,
                  ),
                  Text(
                    'Login to Continue',
                    style: blackTxt20,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.03,
                  ),
                  CustomTextField(
                      screenSize: screenSize,
                      labelTxt: 'Email',
                      txtCtrl: lemailCtrl),
                  sbHeight10,
                  CustomTextField(
                    screenSize: screenSize,
                    labelTxt: 'Password',
                    txtCtrl: lpassCtrl,
                    obscure: true,
                  ),
                  sbHeight20,
                  InkWell(
                    onTap: () async {
                      return await LoginButtonClicked(
                          context: context,
                          email: lemailCtrl.text.trim(),
                          password: lpassCtrl.text.trim());
                    },
                    child: ButtonWidget(
                      screenSize: screenSize,
                      buttonTxt: 'Login',
                      buttonClr: defaultColor,
                    ),
                  ),
                  sbHeight10,
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SignupScreen();
                      }));
                    },
                    child: ButtonWidget(
                        screenSize: screenSize,
                        buttonTxt: 'Create Account',
                        buttonClr: greyColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
