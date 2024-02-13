import 'package:flutter/material.dart';
import 'package:watch_store/component/extensions.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_textfiled.dart';
import 'package:watch_store/widgets/main_button.dart';

class SendOtpScreen extends StatelessWidget {
  const SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.largeDimens.sizedBoxHeight,
            AppTextField(
              textFieldLabel: AppStrings.enterYourNumber,
              textFiledHintText: AppStrings.hintPhoneNumber,
              textInputType: TextInputType.number,
              textFieldIcon: Image.asset(Assets.svg.digital),
              textFieldController: phoneNumberController,
            ),
            AppDimens.smallDimen.sizedBoxHeight,
            AppMainButton(
              buttonText: AppStrings.sendOtpCode,
              onPressedFunction: () {},
            )
          ],
        ),
      )),
    );
  }
}
