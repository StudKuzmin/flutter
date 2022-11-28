import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/MainAppPAGE/MainAppPageElements.dart';

class MainAppPAGE extends StatefulWidget {
  @override 
  MainApp createState() => MainApp();
}

class MainApp extends State<MainAppPAGE>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // const SizedBox(   // TITLE
                //   child: Material(
                //     child: Text(
                //       "SIGN UP",
                //       style: TextStyle(
                //         color: Colors.black,
                //         fontSize: 32,
                //         decoration: TextDecoration.none
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(   // VK BUTTON
                  width: 200,
                  height: 50,
                  child: MainAppPageElements.vkBtn(context),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // OK BUTTON
                  width: 200,
                  height: 50,
                  child: MainAppPageElements.okBtn(context),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // TABLES BUTTON
                  width: 200,
                  height: 50,
                  child: MainAppPageElements.tablesBtn(context),
                ),

              ],
            ),
          ),



        ],
      ),
    );
  }
}