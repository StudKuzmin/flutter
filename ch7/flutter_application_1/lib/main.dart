import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/color.dart';
import 'package:flutter_application_1/Controller/Consts.dart';

import 'package:flutter_application_1/View/Pages/Reg/RegistrationPAGE.dart';
import 'package:flutter_application_1/View/Pages/Auth/AuthorizationPAGE.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';
import 'package:flutter_application_1/View/Pages/HomePAGE.dart';
import 'package:flutter_application_1/View/Pages/MainAppPAGE/MainAppPAGE.dart';
import 'package:flutter_application_1/View/Pages/vk/VkPAGE.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp( 
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: const Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(),
      initialRoute: '/Home',
      routes: {
        '/Home': (context) => HomePAGE(),
        '/Tables': (context) => TablesPAGE(),
        '/Reg': (context) => RegistrationPAGE(),
        '/Auth': (context) => AuthorizationPAGE(),
        '/MainApp':(context) => MainAppPAGE(),
        '/Vk': (context) => VkPAGE(),
      },
    );
  }
}

// class TestPAGE extends StatefulWidget {
//   const TestPAGE({super.key});

//   @override
//   Test createState() => Test();
// }
// class Test extends State<TestPAGE>{
//   var dropdownvalue = 'Apple';
//   var items =  ['Apple','Banana','Grapes','Orange','watermelon','Pineapple'];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Stack(
//         children: [

//           // DropdownButton(
//           //   value: dropdownvalue,
//           //     icon: Icon(Icons.keyboard_arrow_down),
//           //     items: items.map((String item) {
//           //       return DropdownMenuItem(
//           //           value: item,
//           //           child: Text(item)
//           //       );
//           //     }).toList(),
//           //   onChanged: (value){
//           //     setState(() {
//           //       dropdownvalue = value!;
//           //     });
//           //   },
//           // ),

//           ElevatedButton(
//             onPressed: (){
//               print("test");

//               var logData = jsonEncode({'login':'loginf1','password':'password1'});

//               // http.get(Uri.parse('http://192.168.1.10:8080/kardio/api/covid/patients/11'), 
//               // headers: {
//               //   "Content-Type": "application/json; charset=UTF-8",
//               //   "Accept": "application/json",
//               // }).then((value){
//               //   print('body: ${value.body}');
//               // });
//               // // body: logData).then((value){
//               // //   print('body: ${value.body}');
//               // // });

//               http.post(Uri.parse('http://localhost:8080/kardio/api/users/login'), 
//               headers: {
//                 "Content-Type": "application/json; charset=UTF-8",
//                 "Accept": "application/json",
//               },
//               body: logData)
//               .then((value){
//                 print(value.body);
//               });

//             },
//             child: const Text("sign up"),
//           ),

//         ],
//       ),
//     );
//   }
// }