import 'package:flutter/material.dart';

import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';

import 'package:flutter_application_1/Model/RegData.dart';
import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter/material.dart';


class RegPageElements {

  static signUpText(){
    return const Text("SIGN UP",
      style: TextStyle(
        color: Colors.black,
        fontSize: 32,
        decoration: TextDecoration.none
      ),
    );
  }

  static loginTextField(){
    return TextField(
      decoration: const InputDecoration(
        labelText: 'LOGIN',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      onChanged: (value) {
        RegData.setLogin(value);
      },
    );
  }

  static passwordTextField(){
    return TextField(
      decoration: const InputDecoration(
        labelText: 'PASSWORD',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      onChanged: (value) {
        RegData.setPassword(value);
      },
    );
  }
  
  static signUpBtn(context){
    return ElevatedButton( // BUTTON SIGN UP
      onPressed: (){
        RegData.signUpBtn()
        .then((msg){
          print("regData message: $msg");
          
          if (msg == 'false') print("DATA IS FALSE");
          else{
            Navigator.pushNamed(
              context, 
              '/Home',
            );
          }
        });
        //var regDataJSONstring = regData.stringify();
        // print(regData.stringify());
        // print(regData.toJSON());
        // ReqModeling.reqRegData(regDataJSONstring);
      },
      child: const Text("sign up"),
    );
  }
}