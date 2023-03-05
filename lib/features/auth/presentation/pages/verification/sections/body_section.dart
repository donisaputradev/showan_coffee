part of '../page.dart';

class _BodySection extends StatefulWidget {
  const _BodySection({
    required this.isPhone,
  });

  final bool isPhone;

  @override
  State<_BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<_BodySection> {
  final TextEditingController otpController = TextEditingController();
  Timer? _timer;
  int currentTimer = const Duration(minutes: 5).inSeconds;

  @override
  void initState() {
    otpController.addListener(() {
      setState(() {});
    });
    _startTimer();
    super.initState();
  }

  void _startTimer() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (t) async {
      if (currentTimer == 0) {
        setState(() {
          _timer?.cancel();
        });
      } else {
        setState(() {
          currentTimer--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: Dimens.height(context) / 9),
        SubTitleText(
          widget.isPhone
              ? 'An OTP has been sent your registerd Mobile Number'
              : 'An OTP has been sent your registerd Email',
          style: const TextStyle(fontSize: Dimens.dp18),
        ),
        const SizedBox(height: Dimens.dp16),
        OtpTextInput(
            length: 4,
            keyboardType: TextInputType.number,
            onChanged: (v) {
              setState(() {
                otpController.text = v;
              });
            }),
        const SizedBox(height: Dimens.dp8),
        SubTitleText(
          '${(currentTimer ~/ 60) % 60}:${currentTimer % 60}',
          align: TextAlign.center,
        ),
        const SizedBox(height: Dimens.dp24),
        ElevatedButton(
          onPressed: otpController.text.isNotEmpty
              ? () {
                  Navigator.pushNamed(context, AppRoutes.newPassword);
                }
              : null,
          child: const Text('Verify'),
        ),
        const SizedBox(height: 60),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'If you didn’t receive a code!',
            style: context.adaptiveTheme.labelTextStyle,
            children: [
              TextSpan(
                text: ' Resend',
                style: context.adaptiveTheme.labelTextStyle?.copyWith(
                  color: AppColors.secondary,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    if (currentTimer == 0) {
                      setState(() {
                        currentTimer = const Duration(minutes: 5).inSeconds;
                        _startTimer();
                      });
                    }
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
    otpController.dispose();
    _timer?.cancel();
    super.dispose();
  }
}
