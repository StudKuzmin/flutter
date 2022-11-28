import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/HomePAGE/HomePageElements.dart';

class HomePAGE extends StatefulWidget {
  @override 
  Home createState() => Home();
}

class Home extends State<HomePAGE>{
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