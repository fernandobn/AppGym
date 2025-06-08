import 'package:fitday/main.dart';
import 'package:flutter/material.dart';

class RutinasFormScreens extends StatelessWidget {
  const RutinasFormScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 2, // Aquí pones el index del ítem en el BottomNavigationBar
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
        body: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // fondo del botón
              ),
              child: Row(
                mainAxisSize:
                    MainAxisSize.min, // para que el botón no sea muy grande
                children: [
                  Icon(Icons.cancel, color: Colors.white),
                  SizedBox(width: 5),
                  Text('Cancelar', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
