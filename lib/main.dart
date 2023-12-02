import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PacientesScreen()),
            );
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}

class PacientesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opções de Pacientes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navegar para a tela de consultas
            },
            child: Text('Ver Consultas'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navegar para a tela de receitas
            },
            child: Text('Ver Receitas'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navegar para a tela de atestados
            },
            child: Text('Ver Atestados'),
          ),
        ],
      ),
    );
  }
}

class MedicoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opções de Médico'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Definir receitas para pacientes
            },
            child: Text('Definir Receitas'),
          ),
          ElevatedButton(
            onPressed: () {
              // Marcar reconsultas
            },
            child: Text('Marcar Reconsultas'),
          ),
        ],
      ),
    );
  }
}
