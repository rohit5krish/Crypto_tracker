import 'package:flutter/material.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/infrastructure/authentication/auth_methods.dart';
import 'package:triveous_machine_test/presentation/home/home.dart';

Future signupButttonClick({
  required String email,
  required String pass,
  required String confirmPass,
  required BuildContext context,
}) async {
  String response = 'Please check the details you entered.';
  if (email.isNotEmpty && pass.isNotEmpty && pass == confirmPass) {
    response = await AuthMethods().signupUser(email: email, pass: pass);
    if (response == 'success') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }), (route) => false);
    }
  } else if (email.isEmpty || pass.isEmpty || confirmPass.isEmpty) {
    response = 'Enter all fields';
  } else if (pass != confirmPass) {
    response = 'Passwords do not match';
  }
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content:
        response == 'success' ? Text('Signup Successfull.') : Text(response),
    backgroundColor: response == 'success' ? defaultColor : Colors.red[400],
  ));
}
