import 'package:flutter/material.dart';
import 'package:showan_coffee/core/core.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({
    super.key,
    required this.child,
    required this.title,
  });
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MainAssets.bgLogoImg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: Dimens.dp32),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: context.adaptiveTheme.primaryColor,
                ),
              ),
              const SizedBox(width: Dimens.dp32),
              SubTitleText(
                title,
                style: const TextStyle(fontSize: Dimens.dp18),
              ),
            ],
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
