import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';

class AddRowToTable1Button extends StatelessWidget {
  const AddRowToTable1Button({super.key});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () { Tables().addValuesToTable1(); },
      child: const Text("addRow"),
    );
  }
}
class AddRowToTable2Button extends StatelessWidget {
  const AddRowToTable2Button({super.key});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: () {},
      child: const Text("addRow"),
    );
  }
}

