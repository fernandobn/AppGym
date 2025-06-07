import 'screens/rutinas/rutinas_folder_screens.dart';

import 'screens/rutinas/rutinas_menu_screens.dart';
import 'package:flutter/material.dart';

import 'screens/calendar_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/rutinas/rutinas_form_screens.dart';

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
        // '/settings': (context) => SettingsScreen(),
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
        //Navigator.pushNamed(context, '/agregar_rutinas');
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
          //BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Rutinas'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
        ],
      ),
    );
  }
}
