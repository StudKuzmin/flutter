import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/RegistrationPAGE/RegPageElements.dart';

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

                SizedBox(   // TITLE
                  child: Material(
                    child: RegPageElements.signUpText(),
                  ),
                ),

                SizedBox(     // LOGIN TEXTFIELD
                  width: 200,
                  child: Material(
                    child: RegPageElements.loginTextField(),
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // PASSWORD TEXTFIELD
                  width: 200,
                  child: Material(
                    child: RegPageElements.passwordTextField(),
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(
                  width: 100,
                  height: 50,
                  child: RegPageElements.signUpBtn(context),
                )
                

              ],
            ),
          ),



        ],
      ),
    );
  }
}