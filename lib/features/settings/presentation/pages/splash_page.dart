import 'package:flutter/material.dart';
import 'package:showan_coffee/core/core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Dimens.width(context),
        height: Dimens.height(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(MainAssets.bgCoffeeImg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.splashLogoImg,
              width: Dimens.width(context) / 2,
            ),
            const SizedBox(height: Dimens.dp32),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
