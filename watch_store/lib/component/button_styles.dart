import 'package:flutter/material.dart';
import 'package:watch_store/res/dimens.dart';

class AppButtonStyles {
  static ButtonStyle mainButtonStyle =
      ButtonStyle(shape: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.largeDimens));
    } else {
      return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.mediumDimen));
    }
  }));
}
