import 'package:flutter/material.dart';

class NotificaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
        backgroundColor: const Color.fromARGB(255, 159, 33, 243),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título das notificações
            Text(
              'Você possui 4 notificações!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20),

            // Notificação 1
            NotificationCard(
              title: 'Atividade da Semana:',
              content: 'Faça o desafio enviado pela psicóloga!',
            ),
            SizedBox(height: 16),

            // Notificação 2
            NotificationCard(
              title: 'Um novo vídeo de meditação está disponível!',
              content: '',
            ),
            SizedBox(height: 16),

            // Notificação 3
            NotificationCard(
              title: 'Jogos:',
              content: 'Indicação da semana (Stardew Valley)',
            ),
            SizedBox(height: 16),

            // Notificação 4
            NotificationCard(
              title: 'Esse mês você leu 5 livros! Parabéns!',
              content: '',
            ),
          ],
        ),
      ),
    );
  }
}

// Card customizado para exibir notificações
class NotificationCard extends StatelessWidget {
  final String title;
  final String content;

  const NotificationCard({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEDE7F6),  // Cor de fundo similar ao layout mostrado
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
