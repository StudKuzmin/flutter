import 'package:flutter/material.dart';


class HomePageElements {
  static title() {
    return const Text(
      "Welcome to my app!",
      style: TextStyle(
        color: Colors.black,
        fontSize: 32,
        decoration: TextDecoration.none
      ),
    );
  }

  static toRegPage(context) {
    return ElevatedButton(
      child: const Text("SIGN UP"),
      onPressed: () { 
        Navigator.pushNamed(
          context, 
          "/Reg"
        );
      },
    );
  }

  static toAuthPage(context) {
    return ElevatedButton(
      child: const Text("SIGN IN"),
      onPressed: () { 
        Navigator.pushNamed(
          context, 
          "/Auth"
        );
      },
    );
  }
  
}

