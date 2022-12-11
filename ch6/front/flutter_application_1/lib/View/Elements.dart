import 'package:flutter/material.dart';

class Elements {
  var elements = [const TableRow(children: [Text("AAA"), Text("data"), Text("data")]),];

  getElements() => this.elements;
  void addElements() => this.elements.add(const TableRow(children: [Text("AAA"), Text("data"), Text("data")]),);
}