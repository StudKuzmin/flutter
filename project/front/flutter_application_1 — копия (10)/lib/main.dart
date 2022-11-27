import 'package:flutter/material.dart';

import 'package:flutter_application_1/View/Pages/Reg/RegistrationPAGE.dart';
import 'package:flutter_application_1/View/Pages/Auth/AuthorizationPAGE.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';
import 'package:flutter_application_1/View/Pages/HomePAGE.dart';
import 'package:flutter_application_1/View/Pages/MainAppPAGE/MainAppPAGE.dart';

import 'package:http/http.dart' as http;

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
      initialRoute: '/Home',
      routes: {
        '/Home': (context) => HomePAGE(),
        '/Tables': (context) => TablesPAGE(),
        '/Reg': (context) => RegistrationPAGE(),
        '/Auth': (context) => AuthorizationPAGE(),
        '/MainApp':(context) => MainAppPAGE(),
      },
    );
  }
}

// class Test extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Stack(
//         children: [
//           ElevatedButton(
//             onPressed: (){

//               print("test");

//               http.get(Uri.parse('http://localhost:8080/pr/api/test')).then((response) {
//                 print("Response status: ${response.statusCode}");
//                 print("Response body: ${response.body}");
//               }).catchError((error){
//                 print("Error: $error");
//               });

//             },
//             child: const Text("sign up"),
//           ),
//         ],
//       ),
//     );
//   }
// }