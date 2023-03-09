import 'package:examen_diseno/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 239, 226, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(239, 183, 119, 1),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}
          )
        ],
      ),
      drawer: const DrawerCustom(),
      body: const BodyWidgetAccount(),
    );
  }
}
