import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
      body: Stack(
        children: <Widget>[
          Column(
            children: const <Widget>[
              //Esto es el AppBar de nuestra aplicación
              AppBarCustom(),
              
              //El Widget ClipRRect nos sirve para poder recortar un WIDGET con la propiedad heightFactor
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                child: Align(
                  heightFactor: 0.2,
                  alignment: Alignment.topCenter,
                  //Esta es nuestra animación de la olas de nuestro header
                  child: WaveWidgetCustom(),
                ),
              )
            ],
          ),
          const SingleChildScrollView(
            child: BodyWidget()
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar()
    );
  }
}