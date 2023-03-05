import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/auth/auth.dart';

class ForgotByEmailPage extends StatefulWidget {
  const ForgotByEmailPage({super.key});

  @override
  State<ForgotByEmailPage> createState() => _ForgotByEmailPageState();
}

class _ForgotByEmailPageState extends State<ForgotByEmailPage> {
  final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        title: 'Forgot Password',
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp40),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: Dimens.height(context) / 9),
                const SubTitleText(
                  'Enter Your Registered Email',
                  style: TextStyle(fontSize: Dimens.dp18),
                ),
                const SizedBox(height: Dimens.dp16),
                // PhoneTextInput(
                //   hintText: 'Mobile Number',
                //   controller: emailController,
                // ),
                RegularInput(
                  hintText: 'Email',
                  prefixIcon: Icons.email_outlined,
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: Dimens.dp24),
                ElevatedButton(
                  onPressed: emailController.text.isNotEmpty
                      ? () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.verification,
                            arguments: false,
                          );
                        }
                      : null,
                  child: const Text('Send OTP'),
                ),
                const SizedBox(height: Dimens.dp8),
                const RegularText(
                  'An OTP has been sent your register Email',
                  align: TextAlign.center,
                ),
                const SizedBox(height: 60),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Register by Phone Number?',
                    style: context.adaptiveTheme.labelTextStyle,
                    children: [
                      TextSpan(
                        text: ' Reset here',
                        style: context.adaptiveTheme.labelTextStyle?.copyWith(
                          color: AppColors.secondary,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.forgotByPhone,
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
