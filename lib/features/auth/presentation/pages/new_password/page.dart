import 'package:flutter/material.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/auth/auth.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  void initState() {
    passwordController.addListener(() {
      setState(() {});
    });
    rePasswordController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        title: 'New Password',
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp40),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: Dimens.height(context) / 9),
                const SubTitleText(
                  'Enter New Password',
                  align: TextAlign.center,
                  style: TextStyle(fontSize: Dimens.dp18),
                ),
                const SizedBox(height: Dimens.dp16),
                PasswordInput(
                  hintText: 'New Password',
                  controller: passwordController,
                ),
                const SizedBox(height: Dimens.dp16),
                PasswordInput(
                  hintText: 'Retype Password',
                  controller: rePasswordController,
                ),
                const SizedBox(height: Dimens.dp24),
                ElevatedButton(
                  onPressed: passwordController.text.isNotEmpty &&
                          rePasswordController.text.isNotEmpty
                      ? () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.home,
                            (route) => false,
                          );
                        }
                      : null,
                  child: const Text('Reset Password'),
                ),
                const SizedBox(height: Dimens.dp8),
                const RegularText(
                  'For the safety of your  account please user strong password',
                  align: TextAlign.center,
                ),
                const SizedBox(height: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }
}
