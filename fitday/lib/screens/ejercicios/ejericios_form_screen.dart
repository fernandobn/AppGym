import 'package:flutter/material.dart';

import '../../main.dart';

void main() => runApp(MaterialApp(home: EjericiosFormScreen()));

class EjericiosFormScreen extends StatefulWidget {
  @override
  _EjericiosFormScreenState createState() => _EjericiosFormScreenState();
}

class _EjericiosFormScreenState extends State<EjericiosFormScreen> {
  double currentCount = 1;
  List<ExerciseBlock> exerciseBlocks = [ExerciseBlock(index: 1)];

  void updateBlocks(double value) {
    setState(() {
      int newCount = value.toInt();
      int oldCount = exerciseBlocks.length;

      if (newCount > oldCount) {
        for (int i = oldCount + 1; i <= newCount; i++) {
          exerciseBlocks.add(ExerciseBlock(index: i));
        }
      } else if (newCount < oldCount) {
        exerciseBlocks.removeRange(newCount, oldCount);
      }

      currentCount = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2c2c2e),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RepeticionesSpin(value: currentCount, onChanged: updateBlocks),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: exerciseBlocks.length,
                itemBuilder: (context, index) {
                  return exerciseBlocks[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------- Componente de diseño: ExerciseBlock ----------
class ExerciseBlock extends StatefulWidget {
  final int index;

  const ExerciseBlock({Key? key, required this.index}) : super(key: key);

  @override
  _ExerciseBlockState createState() => _ExerciseBlockState();
}

class _ExerciseBlockState extends State<ExerciseBlock> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  String selectedUnit = 'kg';

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2c2c2e),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<String>(
                    value: selectedUnit,
                    dropdownColor: Colors.grey[900],
                    decoration: const InputDecoration(
                      labelText: 'Unidad',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(),
                    ),
                    style: const TextStyle(color: Colors.white),
                    items: ['kg', 'lbs'].map((unit) {
                      return DropdownMenuItem<String>(
                        value: unit,
                        child: Text(
                          unit,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedUnit = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    readOnly: true,
                    initialValue: '${widget.index}',
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: 'Repetición',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: timeController,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Tiempo (seg)',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
