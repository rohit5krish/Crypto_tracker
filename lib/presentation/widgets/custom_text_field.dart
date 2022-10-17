import 'package:flutter/material.dart';
import 'package:triveous_machine_test/core/constants.dart';

class CustomTextField extends StatelessWidget {
  final Size screenSize;
  final String labelTxt;
  final TextEditingController txtCtrl;
  final bool? obscure;

  const CustomTextField({
    Key? key,
    required this.screenSize,
    required this.labelTxt,
    required this.txtCtrl,
    this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width - 50,
      child: TextFormField(
        controller: txtCtrl,
        style: blackTxt16,
        obscureText: obscure ?? false,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText: labelTxt),
      ),
    );
  }
}
