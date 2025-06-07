import 'package:flutter/material.dart';

class RutinasMenuScreens extends StatelessWidget {
  const RutinasMenuScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Center(
              child: Text(
                'Escoge tu mejor opción para rutinas',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'rutinas_definidas',
            onPressed: () {
              // Ir a Rutinas definidas
            },
            backgroundColor: Colors.blue,
            child: Icon(Icons.list),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'agregar_rutinas',
            onPressed: () {
              Navigator.pushNamed(context, '/carpeta_rutinas');
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'regresar',
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: const Color.fromARGB(255, 230, 85, 75),
            child: Icon(Icons.arrow_back),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
