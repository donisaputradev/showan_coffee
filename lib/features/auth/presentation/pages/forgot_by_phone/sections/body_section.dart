part of '../page.dart';

class _BodySection extends StatefulWidget {
  const _BodySection();

  @override
  State<_BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<_BodySection> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    phoneController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: Dimens.height(context) / 9),
        const SubTitleText(
          'Enter Your Registered Mobile Number',
          style: TextStyle(fontSize: Dimens.dp18),
        ),
        const SizedBox(height: Dimens.dp16),
        PhoneTextInput(
          hintText: 'Mobile Number',
          controller: phoneController,
        ),
        const SizedBox(height: Dimens.dp24),
        ElevatedButton(
          onPressed: phoneController.text.isNotEmpty
              ? () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.verification,
                    arguments: true,
                  );
                }
              : null,
          child: const Text('Send OTP'),
        ),
        const SizedBox(height: Dimens.dp8),
        const RegularText(
          'An OTP has been sent your register mobile phone',
          align: TextAlign.center,
        ),
        const SizedBox(height: 60),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Register by email?',
            style: context.adaptiveTheme.labelTextStyle,
            children: [
              TextSpan(
                text: ' Reset here',
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
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
