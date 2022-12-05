import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/Controller/PageElements/VkPAGE/VkPageElements.dart';

class VkPAGE extends StatefulWidget {
  @override 
  Vk createState() => Vk();
}

class Vk extends State<VkPAGE>{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [

          Center(
            child: Column(
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
                SizedBox(   // BUTTON SEND GROUP TOKEN
                  height: 50,
                  width: 150,
                  child: Material(
                    child: VkPageElements.sendGroupToken(context),
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