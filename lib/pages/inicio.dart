import 'package:flutter/material.dart';
import 'calendar.dart';  // Tela de calendário
import 'perfil.dart';    // Tela de perfil (importada corretamente)
import 'notifica.dart';  // Tela de notificações (importada corretamente)

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; // Controle do índice do BottomNavigationBar

  // Lista de telas (Home, Calendário, Perfil)
  final List<Widget> _screens = [
    HomeScreen(),        // Tela Home
    CalendarioPage(),    // Tela Calendário
    ProfilePage(),       // Tela Perfil
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_currentIndex],  // Exibe a tela de acordo com o índice
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,  // Índice do BottomNavigationBar
          onTap: (index) {
            setState(() {
              _currentIndex = index;  // Atualiza o índice de acordo com o botão clicado
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendário',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

// HomeScreen: Tela inicial
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Magix',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                      // Icone de notificações, agora com navegação para a tela de notificações
                      IconButton(
                        icon: const Icon(Icons.notifications, color: Colors.black),
                        onPressed: () {
                          // Navega para a tela de notificações
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotificaPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const CircularProgressIndicator(
                        value: 0.75,
                        backgroundColor: Colors.grey,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.purple),
                        strokeWidth: 8,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEDE7F6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'PARABÉNS!\nVocê realizou 75% das atividades programadas, ótima evolução!',
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryChip('Meditação', true),
                  _buildCategoryChip('Exercícios', false),
                  _buildCategoryChip('Livros', false),
                  _buildCategoryChip('Jogos', false),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildImageCard('assets/icons/med1.jpeg'),
                  const SizedBox(height: 16),
                  _buildImageCard('assets/icons/med2.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildImageCard(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}


