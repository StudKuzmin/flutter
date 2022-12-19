import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/HomePAGE/HomePageElements.dart';
import 'package:flutter_application_1/Controller/color.dart';

class HomePAGE extends StatefulWidget {
  @override 
  Home createState() => Home();
}

class Home extends State<HomePAGE>{
  var dropdownvalue = 'white';
  var items =  ['white','black','blue','green','orange','purple'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [

          DropdownButton(
            value: dropdownvalue,
              icon: Icon(Icons.keyboard_arrow_down),
              items: items.map((String item) {
                return DropdownMenuItem(
                    value: item,
                    child: Text(item)
                );
              }).toList(),
            onChanged: (value){
              setState(() {
                dropdownvalue = value!;
              });
            },
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(   // TITLE
                  child: Material(
                    child: HomePageElements.title(),
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN

                SizedBox(   // REG BUTTON
                  width: 200,
                  height: 50,
                  child: HomePageElements.toRegPage(context),
                ),
                
                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // LOG BUTTON
                  width: 200,
                  height: 50,
                  child: HomePageElements.toAuthPage(context),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}