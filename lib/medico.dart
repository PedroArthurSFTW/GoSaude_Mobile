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
                MaterialPageRoute(builder: (context) => ProntuarioScreen()),
              );
            },
            child: Text('Ver Prontuário'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navegar para a tela de futuras consultas
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConsultasScreen()),
              );
            },
            child: Text('Ver Futuras Consultas'),
          ),
        ],
      ),
    );
  }
}

class ProntuarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aqui você deve recuperar os dados reais do prontuário do paciente
    String nome = "João";
    int idade = 30;
    String sexo = "Masculino";
    String descricaoDoenca = "Descrição da doença do paciente.";

    return Scaffold(
      appBar: AppBar(
        title: Text('Prontuário do Paciente'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nome: $nome'),
          Text('Idade: $idade'),
          Text('Sexo: $sexo'),
          Text('Descrição da Doença: $descricaoDoenca'),
        ],
      ),
    );
  }
}

class ConsultasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Aqui você deve recuperar os dados reais das futuras consultas
    String dataConsulta = "01/12/2023";
    String nomePaciente = "João";

    return Scaffold(
      appBar: AppBar(
        title: Text('Futuras Consultas'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Data da Consulta: $dataConsulta'),
          Text('Nome do Paciente: $nomePaciente'),
        ],
      ),
    );
  }
}
