import 'package:examen_diseno/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Prueba Diseño',
    initialRoute: HomeScreen.route,
    routes: {
      HomeScreen.route: (_) => const HomeScreen()
    },
  );
 }
}