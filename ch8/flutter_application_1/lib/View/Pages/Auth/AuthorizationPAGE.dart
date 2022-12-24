import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/AuthorizationPAGE/AuthPageElements.dart';

class AuthorizationPAGE extends StatefulWidget {
  @override 
  Authorization createState() => Authorization();
}

class Authorization extends State<AuthorizationPAGE>{
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
                    child: AuthPageElements.signInText(),
                  ),
                ),
                
                SizedBox(     // LOGIN TEXTFIELD
                  width: 200,
                  child: Material(
                    child: AuthPageElements.loginTextField(),
                  ),
                ),
                const SizedBox(height: 10), //SPACE BETWEEN

                SizedBox(   // PASSWORD TEXTFIELD
                  width: 200,
                  child: Material(
                    child: AuthPageElements.passwordTextField(),
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // PASSWORD TEXTFIELD
                  width: 200,
                  child: Material(
                    child: AuthPageElements.tokenTextField(),
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(
                  width: 100,
                  height: 50,
                  child: AuthPageElements.signInBtn(context),
                ),


              ],
            ),
          ),



        ],
      ),
    );
  }
}