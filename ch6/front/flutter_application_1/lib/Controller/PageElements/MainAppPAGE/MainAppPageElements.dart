import 'package:flutter/material.dart';

import 'package:flutter_application_1/Model/Requests.dart';
import 'package:flutter_application_1/Controller/Token.dart';

class MainAppPageElements{
  static vkBtn(context){
    return ElevatedButton(
      child: const Text("VK"),
      onPressed: () { 
        Navigator.pushNamed(
          context, 
          "/Vk"
        );
      },
    );
  }
  static okBtn(context){
    return ElevatedButton(
      child: const Text("OK"),
      onPressed: () { 
        Navigator.pushNamed(
          context, 
          "/Ok"
        );
      },
    );
  }
  static tablesBtn(context){
    return ElevatedButton(
      child: const Text("TABLES"),
      onPressed: () { 
        Requests.tables(token)
        .then((data){
          print("tables message: $data");

          if (data == "true"){
            Navigator.pushNamed(
              context, 
              "/Tables"
            );
          }
          else print("bad token");
        });
      },
    );
  }
}