import 'package:flutter/material.dart';
import 'package:watch_store/component/extensions.dart';
import 'package:watch_store/res/dimens.dart';

class AppTextField extends StatelessWidget {
  final String textFieldLabel;
  final String textFiledHintText;
  final TextEditingController textFieldController;
  final TextInputType textInputType;
  final Widget textFieldIcon;
  const AppTextField(
      {super.key,
      required this.textFieldLabel,
      required this.textFiledHintText,
      required this.textFieldController,
      this.textFieldIcon = const SizedBox.shrink(),
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(AppDimens.mediumDimen),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(textFieldLabel),
          AppDimens.smallDimen.sizedBoxHeight,
          SizedBox(
            height: size.height * 0.07,
            width: size.width * 0.75,
            child: TextField(
              textAlign: TextAlign.center,
              controller: textFieldController,
              keyboardType: textInputType,
              decoration: InputDecoration(
                hintText: textFiledHintText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
