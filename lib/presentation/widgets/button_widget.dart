import 'package:flutter/material.dart';
import 'package:triveous_machine_test/core/constants.dart';

class ButtonWidget extends StatelessWidget {
  final Size screenSize;
  final String buttonTxt;
  final Color buttonClr;

  const ButtonWidget({
    Key? key,
    required this.screenSize,
    required this.buttonTxt,
    required this.buttonClr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenSize.width - 50,
        height: 50,
        decoration: BoxDecoration(
            color: buttonClr, borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.center,
        child: Text(
          buttonTxt,
          style: whiteTxt16,
        ));
  }
}
