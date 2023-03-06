import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/app/config.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';

part 'sections/form_section.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(Dimens.dp40),
        children: [
          SizedBox(height: Dimens.height(context) / 9),
          HeadingText(AppConfig.appName.toUpperCase(), align: TextAlign.center),
          const SizedBox(height: Dimens.dp40),
          const _FormSection(),
          const SizedBox(height: Dimens.dp40),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Have an account?',
              style: context.adaptiveTheme.labelTextStyle,
              children: [
                TextSpan(
                  text: ' Sign In',
                  style: context.adaptiveTheme.labelTextStyle?.copyWith(
                    color: AppColors.secondary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
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
