import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class EjericiosFormScreen extends StatelessWidget {
  const EjericiosFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario de ejercicios'),
        backgroundColor: Color(0xFF2c2c2e),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/icono1.png'),
        ),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fitness_center),
                labelText: 'Nombre del ejercicio',
                labelStyle: TextStyle(color: Colors.white),
                floatingLabelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white24),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 25),

            Text(
              'Repeticiones por serie:',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 10),
            SpinBox(
              min: 1,
              max: 10,
              value: 1,
              onChanged: (value) => print('Repeticiones: $value'),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text('Guardar', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
