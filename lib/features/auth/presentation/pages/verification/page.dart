import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/auth/auth.dart';

part 'sections/body_section.dart';

class VerificationOTPPage extends StatelessWidget {
  const VerificationOTPPage({super.key, required this.isPhone});
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        title: 'Verification',
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp40),
          children: [
            _BodySection(isPhone: isPhone),
          ],
        ),
      ),
    );
  }
}
