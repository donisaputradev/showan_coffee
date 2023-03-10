import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/auth/auth.dart';

part 'sections/body_section.dart';

class ForgotByPhonePage extends StatelessWidget {
  const ForgotByPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        title: 'Forgot Password',
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp40),
          children: const [
            _BodySection(),
          ],
        ),
      ),
    );
  }
}
