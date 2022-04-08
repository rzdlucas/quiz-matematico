import 'package:flutter/material.dart';
import 'homepage.dart';
import 'quiz_1.dart';
import 'quiz_2.dart';
import 'quiz3.dart';
import 'resultados.dart';
import 'niveis.dart';
import 'sobre.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        'Niveis': (context) => Niveis(),
        'Quiz1': (context) => Quiz1(),
        'Quiz2': (context) => Quiz2(),
        'Quiz3': (context) => Quiz3(),
        'Sobre': (context) => Sobre(),

        Resultado.routeName: (context) => Resultado(),
      },
    );
  }
}

