import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/app/config.dart';
import 'package:showan_coffee/core/core.dart';

part 'sections/form_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp40),
        children: [
          SizedBox(height: Dimens.height(context) / 7),
          HeadingText(AppConfig.appName.toUpperCase(), align: TextAlign.center),
          const SizedBox(height: Dimens.dp40),
          const _FormSection(),
          const SizedBox(height: Dimens.dp40),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Forgot Password?',
              style: context.adaptiveTheme.labelTextStyle,
              children: [
                TextSpan(
                  text: ' Reset Here',
                  style: context.adaptiveTheme.labelTextStyle?.copyWith(
                    color: AppColors.secondary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // navigate to desired screen
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
