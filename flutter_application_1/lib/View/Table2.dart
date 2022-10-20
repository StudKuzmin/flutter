import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Tables.dart';

class Table2 extends StatelessWidget {
  const Table2({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Table(
        border: TableBorder.all(),
        children: [
          const TableRow(children: [
            Text("4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
          ]),
          const TableRow(children: [
            Text("4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
            Text("4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,
                decoration: TextDecoration.none),
            ),
          ]),
          ...TablesPage().elementsOfTable2
        ],
        defaultColumnWidth: const FixedColumnWidth(100),
      ),
    );
  }
}