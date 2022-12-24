// ignore_for_file: prefer_final_fields, unnecessary_this

class TableElements {
  var _elementsOfTable1 = [];
  var _elementsOfTable2 = [];

  addToTable1(var data){ this._elementsOfTable1.add(data); }
  addToTable2(var data){ this._elementsOfTable2.add(data); }
  getTable1Arr() => this._elementsOfTable1;
  getTable2Arr() => this._elementsOfTable2;
}

var tableElements = TableElements();
