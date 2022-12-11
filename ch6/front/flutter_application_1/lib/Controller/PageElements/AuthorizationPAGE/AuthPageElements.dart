import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';

import 'package:flutter_application_1/Controller/Token.dart';

import 'package:flutter_application_1/Model/AuthData.dart';
import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter/material.dart';


class AuthPageElements {

  static signInText() {
    return const Text("SIGN IN",
      style: TextStyle(
        color: Colors.black,
        fontSize: 32,
        decoration: TextDecoration.none
      ),
    );     
  }
  static loginTextField() {
    return TextField(
      decoration: const InputDecoration(
        labelText: 'LOGIN',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      onChanged: (value) {
        AuthData.setLogin(value);
      },
    );
  }

  static passwordTextField() {
    return TextField(
      decoration: const InputDecoration(
        labelText: 'PASSWORD',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      onChanged: (value) {
        AuthData.setPassword(value);
      },
    );
  }

  static signInBtn(context) {
    return ElevatedButton( // BUTTON SIGN IN
      onPressed: (){
        AuthData.signInBtn()
        .then((msg){
          print("logData message: $msg");

          if (msg == 'false') print("DATA IS FALSE");
          else{
            token = msg;
            Navigator.pushNamed(
              context, 
              '/MainApp',
            );
          }
        });
      },
      child: const Text("sign in"),
    );
  }
}