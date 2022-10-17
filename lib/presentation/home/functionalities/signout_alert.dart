import 'package:flutter/material.dart';
import 'package:triveous_machine_test/infrastructure/authentication/auth_methods.dart';
import 'package:triveous_machine_test/presentation/login/login.dart';

signoutAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure to want to logout?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('No')),
            TextButton(
                onPressed: () async {
                  await AuthMethods().signOutUser();
                  Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
                },
                child: Text('Yes'))
          ],
        );
      });
}