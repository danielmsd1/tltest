import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:tltest/colors.dart';

class CustomConfirmationSlider extends StatelessWidget {
  const CustomConfirmationSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConfirmationSlider(
      backgroundColor: color3,
      foregroundColor: color1,
      text: "SLIDE TO CONFIRM",
      textStyle: const TextStyle(
        color: color1,
        fontSize: 15,
        fontFamily: "InterUI",
      ),
      onConfirmation: () => print("Confirmed!"),
    );
  }
}
