import 'package:flutter/material.dart';
import 'package:showan_coffee/core/core.dart';

class SocialTextIconButton extends StatelessWidget {
  const SocialTextIconButton({
    super.key,
    required this.bgColor,
    required this.icon,
    required this.label,
    this.isLight = false,
  });
  final Color bgColor;
  final Widget icon;
  final String label;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: bgColor,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp24,
          vertical: Dimens.dp12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp14),
        ),
      ),
      onPressed: () {},
      icon: icon,
      label: Text(
        label,
        style: isLight ? TextStyle(color: AppColors.primary[900]) : null,
      ),
    );
  }
}
