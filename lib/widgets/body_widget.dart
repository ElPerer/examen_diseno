import 'package:flutter/material.dart';
import 'package:examen_diseno/widgets/widgets.dart';
import 'package:neon_widgets/neon_widgets.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                //Este es el contenedor de nuestro texto que está a la izquierda de nuestra imagen principal
                Container(
                  width: 130,
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.only(top: 200),
                  child: const Text('Educación Guapa',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
                //Esta es la imagen que está a la derecha, que será nuestra imagen principal
                const WidgetImage(),
              ],
            )
          ],
        ),
        const _InBodyWidget()
      ],
    );
  }
}

class _InBodyWidget extends StatelessWidget {
  const _InBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            _SingleCards(
              beginColor: Color.fromRGBO(250, 66, 115, 1),
              endColor: Color.fromRGBO(146, 83, 218, 1),
              nombre: 'Izum',
              imagen: 'https://matemovil.com/wp-content/uploads/2020/01/razonamiento.png'
            ),
            _SingleCards(
              beginColor:  Color.fromRGBO(253, 166, 44, 1),
              endColor: Color.fromRGBO(248, 101, 30, 1),
              nombre: 'Química',
              imagen: 'https://images.vexels.com/media/users/3/146643/isolated/preview/638f68d7829803682d5b6f3889d57099-matraz-de-quimica.png',
              padding: 70
            )
          ]
        ),
        TableRow(
          children: <Widget>[
            _SingleCards(
              beginColor:  Color(0xff2E305F),
              endColor: Color(0xff202333),
              nombre: 'Noche',
              imagen: 'https://images.vexels.com/media/users/3/153364/isolated/lists/739f05db87dfa2a587ce8dd130c70097-icono-de-la-escuela-del-telescopio.png',
              padding: 70,
              animation: true,
            ),
            _SingleCards(
              beginColor:  Color.fromRGBO(233, 150, 46, 1),
              endColor: Color.fromRGBO(252, 197, 36, 1),
              nombre: 'Biología',
              imagen: 'https://i.pinimg.com/originals/6e/24/41/6e24412d9ad3ca625159ae28357263b0.png',
              padding: 70,
            )
          ]
        ),
        TableRow(
          children: <Widget>[
            _SingleCards(
              beginColor:  Color.fromRGBO(36, 223, 171, 1),
              endColor: Color.fromRGBO(55, 115, 243, 1),
              nombre: 'Pokes',
              imagen: 'https://seeklogo.com/images/P/pokeball-logo-DC23868CA1-seeklogo.com.png',
              padding: 70,
            ),
            _SingleCards(
              beginColor:  Color.fromRGBO(234, 56, 218, 1),
              endColor: Color.fromRGBO(66, 106, 247, 1),
              nombre: 'Galería',
              imagen: 'https://images.vexels.com/media/users/3/137380/isolated/lists/1b2ca367caa7eff8b45c09ec09b44c16-logotipo-de-icono-de-instagram.png',
              padding: 70,
            )
          ]
        ),
        TableRow(
          children: <Widget>[
            _SingleCards(
              beginColor:  Color.fromRGBO(108, 89, 209, 1),
              endColor: Color.fromRGBO(160, 135, 219, 1),
              nombre: 'Código',
              imagen: 'https://images.vexels.com/media/users/3/224240/isolated/lists/21e33e0bb58925b96b1a00c521c007f2-logotipo-de-soportes-de-programacion.png',
              padding: 70,
            ),
            _SingleCards(
              beginColor:  Color.fromRGBO(3, 118, 191, 1),
              endColor: Color.fromRGBO(0, 51, 123, 1),
              nombre: 'Día',
              imagen: 'https://oriflamenovagewellnessec.com/sistemas/fondo-producto.png',
              padding: 70,
              sol: true,
            )
          ]
        ),
      ],
    );
  }
}

class _SingleCards extends StatelessWidget {

  final Color beginColor;
  final Color endColor;
  final String nombre;
  final String imagen;
  final double? padding;
  final bool? animation;
  final bool? sol;

  const _SingleCards({Key? key, 
  required this.beginColor,
  required this.endColor,
  required this.nombre,
  required this.imagen,
  this.padding,
  this.animation,
  this.sol
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity, //Si deseamos quirtar el WIDGET Stack es necesario colocar el width con el valor de 1
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: const [0.2, 0.8],
              colors: <Color>[
                beginColor,
                endColor
              ]
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Stack(
              children: <Widget>[
                animation != null ?
                const _Estrellas() : Container(),
                sol != null ?
                const _Sol() : Container(),
                Text(nombre, style: const TextStyle(color: Colors.white, fontSize: 22.8), overflow: TextOverflow.ellipsis, maxLines: 2),
                Padding(
                  padding: padding != null ? EdgeInsets.only(left: padding!) : const EdgeInsets.only(left: 66),
                  child: Image(
                    image: NetworkImage(imagen),
                    fit: BoxFit.cover
                  )
                )
              ],
            ),
          ),
        ),
        //Utilizamos el Widget Positioned para poder mover nuestro FloatingActionButton dentro de nuestro Stack
        Positioned(
          top: 54,
          left: 10,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: const Icon(Icons.arrow_right),
        
            onPressed: (){}
          ),
        ),
      ]
    );
  }
}

class _Estrellas extends StatelessWidget {
  const _Estrellas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        oNeonPoint(
          margin: const EdgeInsets.only(left: 100),
          pointSize: 2,
          pointColor: Colors.white,
          spreadColor: Colors.blue,
          lightSpreadRadius: 30,
        ),
        oNeonPoint(
          margin: const EdgeInsets.only(left: 135, top: 20),
          pointSize: 2,
          pointColor: Colors.white,
          spreadColor: Colors.blue,
          lightSpreadRadius: 35,
        ),
        oNeonPoint(
          margin: const EdgeInsets.only(left: 85, top: 35),
          pointSize: 2,
          pointColor: Colors.white,
          spreadColor: Colors.blue,
          lightSpreadRadius: 35,
        ),
      ],
    );
  }
}

class _Sol extends StatelessWidget {
  const _Sol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return oNeonPoint(
      margin: const EdgeInsets.only(left: 88, top: 17),
      pointSize: 18,
      pointColor: Colors.yellow.shade100,
      spreadColor: Colors.yellow.shade200,
      lightSpreadRadius: 45,
    );
  }
}
