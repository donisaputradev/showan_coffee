import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:showan_coffee/core/core.dart';
import 'package:showan_coffee/features/cart/cart.dart';
import 'package:showan_coffee/features/favorite/favorite.dart';
import 'package:showan_coffee/features/home/home.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final body = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[index],
      bottomNavigationBar: FluidNavBar(
        style: FluidNavBarStyle(
          iconSelectedForegroundColor: AppColors.amber,
          iconUnselectedForegroundColor: context.theme.scaffoldBackgroundColor,
        ),
        icons: [
          FluidNavBarIcon(icon: Icons.home_rounded),
          FluidNavBarIcon(icon: Icons.favorite_rounded),
          FluidNavBarIcon(icon: Icons.shopping_bag_rounded),
        ],
        onChange: (v) {
          setState(() {
            index = v;
          });
        },
      ),
    );
  }
}
