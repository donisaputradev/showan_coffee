part of '../page.dart';

class _FormSection extends StatefulWidget {
  const _FormSection();

  @override
  State<_FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<_FormSection> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });
    passwordController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SubTitleText('Sign In', align: TextAlign.center),
        const SizedBox(height: Dimens.dp16),
        RegularInput(
          hintText: 'Email',
          prefixIcon: Icons.email_outlined,
          controller: emailController,
          inputType: TextInputType.emailAddress,
        ),
        const SizedBox(height: Dimens.dp16),
        PasswordInput(
          hintText: 'Password',
          controller: passwordController,
        ),
        const SizedBox(height: Dimens.dp24),
        ElevatedButton(
          onPressed: emailController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty
              ? () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.home,
                    (route) => false,
                  );
                }
              : null,
          child: const Text('Sign In'),
        ),
        const SizedBox(height: Dimens.dp10),
        Row(
          children: [
            Expanded(child: Divider(color: context.theme.disabledColor)),
            const SizedBox(width: Dimens.dp6),
            const RegularText('Or'),
            const SizedBox(width: Dimens.dp6),
            Expanded(child: Divider(color: context.theme.disabledColor)),
          ],
        ),
        const SizedBox(height: Dimens.dp10),
        OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.resgister);
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
