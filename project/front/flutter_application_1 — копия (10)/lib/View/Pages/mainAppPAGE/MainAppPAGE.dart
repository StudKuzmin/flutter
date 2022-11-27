import 'package:flutter/material.dart';

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
                SizedBox(   // REG BUTTON
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("VK"),
                    onPressed: () { 
                      
                      
                      Navigator.pushNamed(
                        context, 
                        "/VK"
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // LOG BUTTON
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("OK"),
                    onPressed: () { 
                      
                      Navigator.pushNamed(
                        context, 
                        "/OK"
                      );
                    },
                  ),
                ),

                const SizedBox(height: 10), //SPACE BETWEEN
                SizedBox(   // TABLES BUTTON
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("TABLES"),
                    onPressed: () { 
                      
                      Navigator.pushNamed(
                        context, 
                        "/Tables"
                      );
                    },
                  ),
                ),

              ],
            ),
          ),



        ],
      ),
    );
  }
}