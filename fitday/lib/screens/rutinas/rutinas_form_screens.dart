import 'package:flutter/material.dart';
import '../../main.dart';

class RutinasFormScreens extends StatelessWidget {
  const RutinasFormScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 2, // aqui se pone el caso para que se selecione el nuevo navigation bar
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Rutinas'),
          backgroundColor: Color(0xFF2c2c2e),
          leading: Image.asset('assets/icono1.png'),
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF2c2c2e),
        body: Center(
          child: Text(
            'Aquí se va agregar rutinas',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
