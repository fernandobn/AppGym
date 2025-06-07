import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class RutinasFolderScreens extends StatefulWidget {
  const RutinasFolderScreens({Key? key}) : super(key: key);

  @override
  State<RutinasFolderScreens> createState() => _RutinasFolderScreensState();
}

class _RutinasFolderScreensState extends State<RutinasFolderScreens> {
  Color folderColor = Colors.green; // Color inicial

  void _showColorPicker() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Escoge el color de la carpeta'),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: folderColor,
            onColorChanged: (color) {
              setState(() {
                folderColor = color;
              });
            },
            enableAlpha: false,
            showLabel: false,
            pickerAreaHeightPercent: 0.8,
          ),
        ),
        actions: [
          TextButton(
            child: const Text('Cerrar'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas'),
        backgroundColor: const Color(0xFF2c2c2e),
        leading: Image.asset('assets/icono1.png'),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xFF2c2c2e),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.folder, color: folderColor),
                labelText: 'Nombre de la rutina',
                labelStyle: const TextStyle(color: Colors.white),
                floatingLabelStyle: const TextStyle(color: Colors.white),
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: folderColor),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Color de carpeta:',
                  style: TextStyle(
                    color: folderColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: _showColorPicker,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: folderColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Guardar')),
                SizedBox(width: 25),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/calendar');
                  },
                  child: Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
