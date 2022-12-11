import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/VkPAGE/VkPageElements.dart';

import '../../../Model/VkPageModeling.dart';

class VkPAGE extends StatefulWidget {
  @override 
  Vk createState() => Vk();
}

class Vk extends State<VkPAGE>{
  var group_name;
  var public;
  var icon;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [

          

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    SizedBox(   // TEXT FIELD GROUP_ID
                      width: 400,
                      child: Material(
                        child: VkPageElements.groupId(),
                      ),
                    ),

                    const SizedBox(height: 10), //SPACE BETWEEN
                    SizedBox(   // TEXT FIELD GROUP TOKEN
                      width: 400,
                      child: Material(
                        child: VkPageElements.fieldToken(),
                      ),
                    ),

                    const SizedBox(height: 10), //SPACE BETWEEN
                    SizedBox(   // BUTTON NEXT
                      height: 50,
                      width: 150,
                      child: Material(
                        child: ElevatedButton( // BUTTON NEXT
                          onPressed: (){
                            VkPageModeling.nextBtn()
                            .then((data){
                              print(data);

                              Map decoded = jsonDecode(data);
                              print(decoded['response'][0]['name']);
                              print(decoded['response'][0]['is_closed']);
                              print(decoded['response'][0]['photo_50']);

                              setState(() {
                                group_name = decoded['response'][0]['name'];
                                public = decoded['response'][0]['is_closed'];
                                icon = Image.network(decoded['response'][0]['photo_50']);
                              });
                            });
                          },
                          child: const Text("NEXT"),
                        ),
                      ),
                    ),

                  ],
                ),

                Container(
                  width: 600,
                  height: 800,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 151, 163, 165),
                    border: Border.all(
                      width: 1,
                      color: Colors.black87,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          const Text("group_name:  ",
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 10), //SPACE BETWEEN

                          Text("$group_name",
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Color.fromARGB(255, 99, 0, 90), fontSize: 24, decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 10), //SPACE BETWEEN

                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          const Text("closed:  ",
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 10), //SPACE BETWEEN

                          Text("$public",
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Color.fromARGB(255, 99, 0, 90), fontSize: 24, decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 10), //SPACE BETWEEN
                          
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          const Text("icon:  ",
                            //textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 10), //SPACE BETWEEN

                          icon,
                          const SizedBox(height: 10), //SPACE BETWEEN
                          
                        ],
                      ),
                    

                    ],
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