import 'package:flutter/material.dart';
import 'package:watch_store/component/extensions.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_textfiled.dart';
import 'package:watch_store/widgets/main_button.dart';

class VerifyOtpScreen extends StatelessWidget {
  VerifyOtpScreen({super.key});
  final TextEditingController otpVerifyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            AppDimens.mediumDimen.sizedBoxHeight,
            Text(AppStrings.otpCodeSendFor
                .replaceAll(AppStrings.replace, "09037606508")),
            AppDimens.mediumDimen.sizedBoxHeight,
            const Text(AppStrings.wrongNumberEditNumber),
            AppTextField(
                textFieldLabel: AppStrings.enterVerificationCode,
                textFiledHintText: "------",
                textFieldController: otpVerifyController,
                textInputType: TextInputType.number),
            AppMainButton(
              buttonText: AppStrings.next,
              onPressedFunction: () {},
            )
          ],
        ),
      )),
    );
  }
}
