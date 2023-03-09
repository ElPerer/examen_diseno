import 'package:examen_diseno/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    final pages = [
      const SchoolScreen(),
      const AccountScreen()
    ];
    
    return LiquidSwipe(
      pages: pages,
      slideIconWidget: const Icon(Icons.arrow_back_ios_rounded)
    );
  }
}
