import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MateriaCombo extends StatefulWidget {
  const MateriaCombo({Key? key}) : super(key: key);

  @override
  State<MateriaCombo> createState() => _MateriaComboState();
}

class _MateriaComboState extends State<MateriaCombo> {
  String dropdownValue = 'Computación';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      decoration: const InputDecoration(
        labelText: "Ingrese materia",
        icon: Icon(Icons.person),
        //suffixText: etiquetaFin,

        //border: InputBorder.none,
        //border: OutlineInputBorder(),
        hintText: "Materia",
      ),
      // Esta propiedad es solo de 'DropdownButton'
      // underline: Container(
      //   height: 2,
      //   color: Colors.deepPurpleAccent,
      // ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Computación',
        'Mecatrónica',
        'Contabilidad',
        'Arquitectura'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
