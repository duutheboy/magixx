import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MagixApp());
}

class MagixApp extends StatelessWidget {
  // Adicionando o parâmetro key no construtor
  const MagixApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magix App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Remover 'const' aqui, já que LoginPage não é constante
    );
  }
}





