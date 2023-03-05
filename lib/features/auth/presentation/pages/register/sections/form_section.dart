part of '../page.dart';

class _FormSection extends StatefulWidget {
  const _FormSection();

  @override
  State<_FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<_FormSection> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    nameController.addListener(() {
      setState(() {});
    });
    phoneController.addListener(() {
      setState(() {});
    });
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
        const SubTitleText('Sign Up', align: TextAlign.center),
        const SizedBox(height: Dimens.dp16),
        RegularInput(
          hintText: 'Name',
          prefixIcon: Icons.email_outlined,
          controller: nameController,
          inputType: TextInputType.name,
        ),
        const SizedBox(height: Dimens.dp16),
        PhoneTextInput(
          hintText: 'Mobile Number',
          controller: phoneController,
        ),
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
          onPressed: nameController.text.isNotEmpty &&
                  phoneController.text.isNotEmpty &&
                  emailController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty
              ? () {}
              : null,
          child: const Text('Sign Up'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
