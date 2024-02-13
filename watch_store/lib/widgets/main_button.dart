import 'package:flutter/material.dart';
import 'package:watch_store/component/button_styles.dart';

class AppMainButton extends StatelessWidget {
  final String buttonText;
  void Function() onPressedFunction;
  AppMainButton(
      {super.key, required this.buttonText, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.75,
      height: size.height * 0.07,
      child: ElevatedButton(
          style: AppButtonStyles.mainButtonStyle,
          onPressed: () {},
          child: Text(buttonText)),
    );
  }
}
