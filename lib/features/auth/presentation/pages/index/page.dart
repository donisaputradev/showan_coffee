import 'package:flutter/material.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Dimens.height(context) / 1.6,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(Dimens.dp32),
                    bottomRight: Radius.circular(Dimens.dp32),
                  ),
                  child: Image.asset(
                    MainAssets.bgCoffeeImg,
                    width: Dimens.width(context),
                    height: Dimens.height(context) / 1.6 - 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(),
                    Hero(
                      tag: MainAssets.splashLogoImg,
                      child: Image.asset(
                        MainAssets.splashLogoImg,
                        height: Dimens.height(context) / 2.2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.dp40,
              vertical: Dimens.dp16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SocialTextIconButton(
                  bgColor: AppColors.secondary,
                  icon: const Icon(Icons.email_rounded),
                  label: 'Sign In with Email',
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                ),
                const SizedBox(height: Dimens.dp16),
                SocialTextIconButton(
                  bgColor: AppColors.indigo,
                  icon: const Icon(Icons.facebook_rounded),
                  label: 'Sign In with Facebook',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.home,
                      (route) => false,
                    );
                  },
                ),
                const SizedBox(height: Dimens.dp16),
                SocialTextIconButton(
                  bgColor: AppColors.secondary[100]!,
                  icon: Image.asset(
                    MainAssets.googleImg,
                    height: Dimens.dp22,
                  ),
                  isLight: true,
                  label: 'Sign In with Google',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.home,
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
