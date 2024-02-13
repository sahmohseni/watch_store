import 'package:flutter/material.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

ThemeData lightAppTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      iconTheme: const IconThemeData(color: Colors.black),
      scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.focused)) {
                return AppColors.focusedTextField;
              } else {
                return AppColors.unFocusedTextField;
              }
            },
          ),
          contentPadding: const EdgeInsets.all(AppDimens.mediumDimen),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.mediumDimen),
              borderSide: const BorderSide(
                  color: AppColors.borderColor,
                  width: AppDimens.textFieldBorderWidth)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimens.mediumDimen),
              borderSide: const BorderSide(color: AppColors.primaryColor))));
}
