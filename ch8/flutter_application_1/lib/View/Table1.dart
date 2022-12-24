import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';

// class Table1 extends StatefulWidget{
//   @override
//   Table1Page createState() => Table1Page();
// }
class Table1 extends StatelessWidget {
  // void addValuesToTable1() {
  //   // print(Elements().getElements());
  //   setState(() {
  //     //Elements().addElements();
  //     print(Elements().getElements());
  //   });
  // }
  //final keySizeTable1 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        // key: keySizeTable1,
        border: TableBorder.all(),
        children: [
          const TableRow(children: [
            Text("1",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("2",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("3",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
          ]),
          const TableRow(children: [
            Text("1",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("2",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("3",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
          ]),
          //...Tables().elementsOfTable1
        ],
        defaultColumnWidth: const FixedColumnWidth(100),
      ),
    );
  }
}