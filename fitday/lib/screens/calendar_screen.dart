import 'package:flutter/material.dart';
import '../main.dart'; // Importar MainScaffold

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      currentIndex: 1, // Aquí pones el index del ítem en el BottomNavigationBar
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2c2c2e),
          leading: Image.asset('assets/icono1.png'),
          title: const Text('FitDay'),
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.calendar_month, color: Colors.white),
              onPressed: () {
                // Acción al presionar el botón de calendario
              },
            ),
          ],
        ),
        backgroundColor: Color(0xFF2c2c2e),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      // Acción al presionar la flecha izquierda
                    },
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Rutinas de hoy',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    onPressed: () {
                      // Acción al presionar la flecha derecha
                    },
                  ),
                ],
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(Icons.fitness_center, color: Colors.white),
                      title: Text(
                        'Sentadillas',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Repeticiones: 15\nSeries: 4\nDescanso: 1 minuto',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Icon(Icons.fitness_center, color: Colors.white),
                      title: Text(
                        'Presnta',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Repeticiones: 15\nSeries: 4\nDescanso: 1 minuto',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.limeAccent,
          onPressed: () {
            Navigator.pushNamed(context, '/menu_rutinas');
          },
          child: Icon(Icons.add, color: Colors.black),
        ),
      ),
    );
  }
}
