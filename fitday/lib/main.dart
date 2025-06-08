import 'screens/ejercicios/ejericios_form_screen.dart';

import 'screens/rutinas/rutinas_folder_screens.dart';

import 'screens/rutinas/rutinas_menu_screens.dart';
import 'package:flutter/material.dart';

import 'screens/calendar_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/rutinas/rutinas_form_screens.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MenuScreen(),
        '/calendar': (context) => CalendarScreen(),
        '/menu_rutinas': (context) => RutinasMenuScreens(),
        '/carpeta_rutinas': (context) => RutinasFolderScreens(),

        '/agregar_rutinas': (context) => RutinasFormScreens(),
        '/agregar_ejercicios': (context) => EjericiosFormScreen(),
      },
    );
  }
}

class MainScaffold extends StatelessWidget {
  final Widget body;
  final int currentIndex;

  MainScaffold({required this.body, required this.currentIndex});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/calendar');
        break;
      case 2:
        Navigator.pushNamed(context, '/agregar_rutinas');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2c2c2e),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF2c2c2e),
        selectedItemColor: Colors.limeAccent,
        unselectedItemColor: const Color.fromARGB(255, 137, 134, 134),
        currentIndex: currentIndex,
        onTap: (index) => _onItemTapped(context, index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_outlined),
            label: 'Regresar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Rutinas'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
        ],
      ),
    );
  }
}

class RepeticionesSpin extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const RepeticionesSpin({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              icon: const Icon(Icons.close, color: Colors.red),
            ),
            Expanded(
              child: Text(
                'Repeticiones por serie:',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.check, color: Colors.green),
            ),
          ],
        ),
        SizedBox(height: 5),
        TextFormField(
          style: const TextStyle(color: Colors.white), // texto blanco
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.add,
              color: Colors.green,
            ), // ícono verde
            labelText: 'Nombre:',
            labelStyle: const TextStyle(color: Colors.white), // etiqueta blanca
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ), // borde normal blanco
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 2,
              ), // borde foco blanco y más grueso
            ),
          ),
        ),

        SizedBox(height: 5),

        SpinBox(
          min: 1,
          max: 10,
          value: value,
          onChanged: onChanged,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(),
          ),
        ),

        SizedBox(height: 5),
        BottomNavigationBar(
          backgroundColor: Color(0xFF2c2c2e),
          currentIndex: 0,
          onTap: (index) {
            // lógica para cambiar pantalla o estado
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), // para "peso"
              label: '', // sin texto
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.repeat), // para "repetición"
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer), // si quieres otro ícono para algo más
              label: '',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ],
    );
  }
}
