import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      buttonBackgroundColor: const Color.fromRGBO(68, 177, 225, 1),
      // buttonBackgroundColor: const Color.fromRGBO(94, 39, 184, 0.8),
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
      color: const Color.fromRGBO(68, 177, 225, 0.9),
      height: 60,
      index: 1,
      items: const <Widget>[
        Icon(Icons.add, color: Colors.white,),
        Icon(Icons.house_sharp, color: Colors.white,),
        Icon(Icons.menu, color: Colors.white,)
      ]
    );
  }
}