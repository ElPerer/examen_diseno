import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(68, 177, 225, 0.9),
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(9),
        height: 1,
        width: 1,
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          icon: const Icon(Icons.menu),
          padding: const EdgeInsets.all(1),
          onPressed: () {},
        ),
      ),
    );
  }
}
