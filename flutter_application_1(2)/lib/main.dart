import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';
import 'package:flutter_application_1/View/Pages/RegistrationPAGE.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: RegistrationPAGE(),
      //initialRoute: '/Tables',
      initialRoute: '/Registration',
      routes: {
        "/Tables": (context) => TablesPAGE(),
        '/Registration': (context) => RegistrationPAGE(),
      },
    );
  }
}

// class Test extends StatefulWidget{
//   TestPage createState() => TestPage();
// }
// class TestPage extends State<Test>{

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: 
//       [ 
//         Material(
//           child: 
//           TextField(
//             onChanged: (text) => print(text),
//           ),
//         ),
//       ]
//     );
//   }

// }

// class Test extends StatefulWidget{
//   const Test({super.key});

//   @override
//   TestPage createState() => TestPage();
// }
// class TestPage extends State<Test> {

//   var arr = [const TableRow(children: [
//               Text("F",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("F",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("F",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//             ]),
//             const TableRow(children: [
//               Text("asF",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("Fd",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("Ff",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//             ]),
//             ];
//   void doAddRow() {
//     setState(() {
//       arr.add(const TableRow(children: [
//               Text("F",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("F",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("F",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//             ]),
//             );
//     });
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return Stack (
//       children: [
//         Table(
//         // key: keySizeTable1,
//           defaultColumnWidth: const FlexColumnWidth(100.0),
//           border: TableBorder.all(),
//           children: [
//             const TableRow(children: [
//               Text("2",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("2",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("2",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//             ]),
//             const TableRow(children: [
//               Text("2",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("2",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//               Text("2",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black,
//                   decoration: TextDecoration.none),
//               ),
//             ]),
//             ...arr
//           ],
//         ),
//         ElevatedButton(
//           onPressed: () {doAddRow();},
//           child: const Text("+"),
//         )
//       ]
//     );
//   }
// }

