import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Buttons.dart';
import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Table1.dart';
import 'package:flutter_application_1/View/Table2.dart';
import 'dart:math';
import 'dart:async';

class Tables extends StatefulWidget {
  @override
  TablesPage createState() => TablesPage();
}

class TablesPage extends State<Tables> {

var msgERROR = "";
var valueTextField = "valueTextFieldSTRING";
var elementsOfTable1 = [const TableRow(children: [Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),)]),];

var elementsOfTable2 = [const TableRow(children: [Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),)]),];

  void addValuesToTable1() {
    setState(() {
      elementsOfTable1.add(const TableRow(children: [Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),)]),);
      print("ok1");
    });
  }
  void addValuesToTable2() {
    setState(() {
      elementsOfTable2.add(const TableRow(children: [Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),)]),);
      print("ok2");
    });
  }

  void fromT1ToT2() {
    setState(() {
      try {
        var position = int.parse(valueTextField);
        elementsOfTable2.add(elementsOfTable1[position]);
        elementsOfTable1.removeAt(position);
      } catch (e) { 
        msgERROR = "ERROR: 1) Text is not INT or 2) Index out of range"; 
      }
      
    });
  }
  void fromT2ToT1() {
    setState(() {
      try {
        var position = int.parse(valueTextField);
        elementsOfTable1.add(elementsOfTable2[position]);
        elementsOfTable2.removeAt(position);
      } catch (e) {
        msgERROR = "ERROR: 1) Text is not INT or 2) Index out of range"; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [Table1(), Table2(),],
        // ),
        // Center(child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [ AddRowToTable1Button(), AddRowToTable2Button(), ],
        //   ),
        // ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Table(
              // key: keySizeTable1,
              border: TableBorder.all(),
              children: [
                ...elementsOfTable1
              ],
              defaultColumnWidth: const FixedColumnWidth(100),
            ),
            Table(
              border: TableBorder.all(),
              children: [
                ...elementsOfTable2
              ],
              defaultColumnWidth: const FixedColumnWidth(100),
            ),
          ],
        ),
        
      Center(child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [ 
            ElevatedButton(
              onPressed: () { addValuesToTable1(); },
              child: const Text("addRow"),
            ),
            ElevatedButton(
              onPressed: () { addValuesToTable2(); },
              child: const Text("addRow"),
            ),
          ],
        ),
      ),

      Align(
        alignment: const FractionalOffset(0.5, 0.6),
        child: Container( 
          width: 50, 
          child: Material(
            child: TextField(
              decoration:  const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)
                ),
              ),
              onChanged: (text) => valueTextField = text,
            ),
          ),
        ),
      ),

      Align(
        alignment: const FractionalOffset(0.5, 0.65),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [ 
            ElevatedButton(
              onPressed: () { fromT1ToT2(); },
              child: const Text("toTable1"),
            ),
            ElevatedButton(
              onPressed: () { fromT2ToT1(); },
              child: const Text("toTable2"),
            ),
          ],
        ),
      ),

      Align(
        alignment: const FractionalOffset(0.5, 0.7),
        child: Text(
          msgERROR,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 0, 0), 
            fontSize: 32, 
            decoration: TextDecoration.none
          ),
        ),
      ),
      
        
        // Positioned( 
        //   bottom: MediaQuery.of(context).size.height/2,
        //   left: MediaQuery.of(context).size.width/5, //TODO
        //   child: Table1()
        // ),
        // Positioned( 
        //   bottom: MediaQuery.of(context).size.height/2,
        //   left: MediaQuery.of(context).size.width/1.5, // TODO
        //   child: const Table2()
        // ),
        // Positioned( 
        //   bottom: MediaQuery.of(context).size.height/2.5,
        //   left: MediaQuery.of(context).size.width/3.9, // TODO
        //   child: const AddRowToTable1Button()
        // ),
        // Positioned( 
        //   bottom: MediaQuery.of(context).size.height/2.5,
        //   left: MediaQuery.of(context).size.width/1.38, // TODO
        //   child: const AddRowToTable2Button()
        // ),
      ]
    );
  }
}