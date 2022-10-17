import 'package:flutter/material.dart';
import 'package:triveous_machine_test/core/constants.dart';
import 'package:triveous_machine_test/infrastructure/authentication/auth_methods.dart';
import 'package:triveous_machine_test/presentation/home/home.dart';

Future<void> LoginButtonClicked({
  required BuildContext context,
  required String email,
  required String password,
}) async {
  String res = await AuthMethods().LoginUser(email: email, password: password);
  if (res == "success") {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Login Successfull'),
      backgroundColor: defaultColor,
    ));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return HomeScreen();
    }));
  } else {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(res),
      backgroundColor: Colors.red[400],
    ));
  }
}
