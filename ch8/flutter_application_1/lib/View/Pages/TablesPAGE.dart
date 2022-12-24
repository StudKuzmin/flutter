import 'package:flutter/material.dart';

import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Table1.dart';
import 'package:flutter_application_1/View/Table2.dart';

import 'package:flutter_application_1/Controller/TableElements.dart';

class TablesPAGE extends StatefulWidget {
  @override
  Tables createState() => Tables();
}

class Tables extends State<TablesPAGE> {

var msgERROR = "";
var valueTextField = "valueTextFieldSTRING";

  void addValuesToTable1() {
    setState(() {
      tableElements.addToTable1(const TableRow(children: [Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),)]),);
    });
  }
  void addValuesToTable2() {
    setState(() {
      tableElements.addToTable2(const TableRow(children: [Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),), 
                                                  Text("empty",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(color: Colors.black, fontSize: 32, decoration: TextDecoration.none),)]),);
    });
  }

  void fromT1ToT2() {
    setState(() {
      try {
        var position = int.parse(valueTextField);
        tableElements.addToTable2(tableElements.getTable1Arr()[position]);
        tableElements.getTable1Arr().removeAt(position);
      } catch (e) { 
        msgERROR = "ERROR: 1) Text is not INT or 2) Index out of range"; 
      }
      
    });
  }
  void fromT2ToT1() {
    setState(() {
      try {
        var position = int.parse(valueTextField);
        tableElements.addToTable1(tableElements.getTable2Arr()[position]);
        tableElements.getTable2Arr().removeAt(position);
      } catch (e) {
        msgERROR = "ERROR: 1) Text is not INT or 2) Index out of range"; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Table(
              // key: keySizeTable1,
              border: TableBorder.all(),
              children: [
                ...tableElements.getTable1Arr()
              ],
              defaultColumnWidth: const FixedColumnWidth(100),
            ),
            Table(
              border: TableBorder.all(),
              children: [
                ...tableElements.getTable2Arr()
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
              child: const Text("toTable2"),
            ),
            ElevatedButton(
              onPressed: () { fromT2ToT1(); },
              child: const Text("toTable1"),
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

      Align(
        alignment: const FractionalOffset(0.99, 0.99),
        child: SizedBox(
          width: 100,
          height: 50,
          child: ElevatedButton(
            child: const Text("BACK"),
            onPressed: () { 
              Navigator.pushNamed(
                context, 
                "/Home"
              );
            },
          ),
        ),
      ),

      // Column(
      //   children:[
      //     ElevatedButton(
      //       child: const Text("TEST print"),
      //       onPressed: () { 
      //         print(vr.incVar());
      //       },
      //     ),
      //     ElevatedButton(
      //       child: const Text("TEST++"),
      //       onPressed: () { 
      //         vr.incVar();
      //       },
      //     ),
      //   ]
      // ),
      
        
        // Positioned( 
          // bottom: MediaQuery.of(context).size.height/2,
          // left: MediaQuery.of(context).size.width/5, //TODO
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