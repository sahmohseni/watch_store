import 'package:flutter/material.dart';

extension SizedBoxExtension on double {
  SizedBox get sizedBoxHeight => SizedBox(
        height: toDouble(),
      );
  SizedBox get sizedBoxWidth => SizedBox(
        width: toDouble(),
      );
}
