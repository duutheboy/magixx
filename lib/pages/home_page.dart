import 'package:flutter/material.dart';
import 'inicio.dart'; // Importa a tela de navegação com BottomNavigationBar

void main() {
  runApp(HomePageApp());
}

class HomePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/mgx.jpeg', // Caminho corrigido
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Magix",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              RichText(
                text: const TextSpan(
                  text: 'Bem-vindo, ',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'Patrícia!',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Hora de cuidar da sua saúde mental!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Navegar para a página de início com BottomNavigationBar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()), // Navega para a tela Inicio
                  );
                },
                child: const Text(
                  "Começar",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/men.jpeg', // Caminho corrigido
                    height: 180,
                    width: 180,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

