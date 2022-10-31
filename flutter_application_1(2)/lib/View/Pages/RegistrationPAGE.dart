import 'package:flutter/material.dart';

class RegistrationPAGE extends StatefulWidget {
  @override 
  Registration createState() => Registration();
}

class Registration extends State<RegistrationPAGE>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [



          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                const SizedBox(   // TITLE
                  child: Material(
                    child: Text(
                      "Welcome to my app!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        decoration: TextDecoration.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(     // LOGIN TEXTFIELD
                  width: 200,
                  child: Material(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'LOGIN',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), //SPACE BETWEEN
                const SizedBox(   // PASSWORD TEXTFIELD
                  width: 200,
                  child: Material(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10), //SPACE BETWEEN
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(
                      context, 
                      "/Tables",
                    );
                  },
                  child: const Text("sign up"),
                ),


              ],
            ),
          ),



        ],
      ),
    );
  }
}