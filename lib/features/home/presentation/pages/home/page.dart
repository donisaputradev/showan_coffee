import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/app/routes.dart';
import 'package:showan_coffee/core/core.dart';

part 'sections/banner_section.dart';
part 'sections/drink_section.dart';
part 'sections/food_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Dimens.dp75,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SubTitleText('Good Morning!'),
            HeadingText(
              'Doni Mulya Syahputra',
              style: TextStyle(color: AppColors.amber[700]),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.settings);
            },
            icon: Container(
              padding: const EdgeInsets.all(Dimens.dp2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.secondary),
              ),
              child: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimens.dp100),
                  child: Image.network(
                    'https://avatars.githubusercontent.com/u/94351550?v=4',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          _BannerSection(),
          _DrinkSection(),
          _FoodSection(),
        ],
      ),
    );
  }
}
