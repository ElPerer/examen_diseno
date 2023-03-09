import 'package:flutter/material.dart';

class BodyWidgetAccount extends StatelessWidget {
  const BodyWidgetAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: _BodyWidgetAccountHeader(),
            alignment: Alignment.topCenter,
            height: height*0.4,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(239, 183, 119, 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35))
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Mis Tareguapas', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600), textDirection: TextDirection.rtl,),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: const Color.fromRGBO(44, 142, 144, 1),
                  child: const Icon(Icons.calendar_today),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          const _BodyWidgetAccountBody(
            textPrincipal: 'URGEEE URRGEEEE',
            textSecundario: '5 Tareas para ayer',
            icon: Icons.alarm,
            buttonColor: Color.fromRGBO(222, 95, 108, 1)
          ),
          const _BodyWidgetAccountBody(
            textPrincipal: 'TAREAS DE CARACTER URGENTE',
            textSecundario: '5 a la brevedad en producción',
            icon: Icons.priority_high,
            buttonColor: Color.fromRGBO(239, 183, 119, 1)
          ),
          const _BodyWidgetAccountBody(
            textPrincipal: 'TAREAS EN ESPERA',
            textSecundario: '3 Tareas',
            icon: Icons.lock_clock,
            buttonColor: Color.fromRGBO(44, 142, 144, 1)
          ),
          const _BodyWidgetAccountBody(
            textPrincipal: 'TAREAS TERMINADAS',
            textSecundario: '1 y con bugs',
            icon: Icons.done_rounded,
            buttonColor: Color.fromRGBO(97, 132, 213, 1)
          ),
        ]
      ),
    );
  }
}

class _BodyWidgetAccountHeader extends StatelessWidget {
  const _BodyWidgetAccountHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const CircleAvatar(
          maxRadius: 40,
          backgroundImage: NetworkImage(
            'https://pps.whatsapp.net/v/t61.24694-24/232609478_260584442306453_3904171292293356523_n.jpg?ccb=11-4&oh=01_AVxscuS6pPRaS5Wc_nHIrPUBJ-OjR6uWnfcqfwHf0Y1B2A&oe=630B3ED6',
          )
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Wolf El Wolfarias', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25)),
            SizedBox(height: 5,),
            Text('Desarrollador chat blututch', style: TextStyle(color: const Color.fromRGBO(154, 111, 58, 1), fontSize: 15, fontWeight: FontWeight.w400),)
          ],
        )
      ],
    );
  }
}

class _BodyWidgetAccountBody extends StatelessWidget {

  final String textPrincipal;
  final String textSecundario;
  final IconData icon;
  final Color buttonColor;
  const _BodyWidgetAccountBody({
    Key? key,
    required this.textPrincipal,
    required this.textSecundario,
    required this.icon,
    required this.buttonColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          child: Row(
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: buttonColor,
                elevation: 0,
                child: Icon(icon),
                onPressed: (){},
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(textPrincipal, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                  const SizedBox(height: 5,),
                  Text(textSecundario, style: const TextStyle(color: Color.fromRGBO(158, 152, 142, 1)),)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}