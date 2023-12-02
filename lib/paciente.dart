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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceitasScreen()),
              );
            },
            child: Text('Ver Receitas'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AtestadosScreen()),
              );
            },
            child: Text('Ver Atestados'),
          ),
        ],
      ),
    );
  }
}

class ReceitasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aqui você deve recuperar os dados reais das receitas do paciente
    List<String> receitas = ["Receita 1", "Receita 2", "Receita 3"];

    return Scaffold(
      appBar: AppBar(
        title: Text('Suas Receitas'),
      ),
      body: ListView.builder(
        itemCount: receitas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(receitas[index]),
          );
        },
      ),
    );
  }
}

class AtestadosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aqui você deve recuperar os dados reais dos atestados do paciente
    List<String> atestados = ["Atestado 1", "Atestado 2", "Atestado 3"];

    return Scaffold(
      appBar: AppBar(
        title: Text('Seus Atestados'),
      ),
      body: ListView.builder(
        itemCount: atestados.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(atestados[index]),
          );
        },
      ),
    );
  }
}
