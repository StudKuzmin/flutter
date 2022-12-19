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
  var closed;
  var icon = Image.network("https://i.ytimg.com/vi/Cl3m9Xgrii4/maxresdefault.jpg", width: 64, height: 64);

  var status;
  var minutes;

  var count;

  var reqs =  ['groups.getById','groups.getMembers','groups.getOnlineStatus'];
  var currentItem = "groups.getById";

  
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
                    SizedBox(   // BUTTON SHOW
                      height: 50,
                      width: 150,
                      child: Material(
                        child:  ElevatedButton( // BUTTON SHOW
                          onPressed: (){
                            VkPageModeling.doRequest(currentItem)
                            .then((data){
                              print(data);

                              Map decoded = jsonDecode(data);
                              print(decoded['response'][0]['name']);
                              print(decoded['response'][0]['is_closed']);
                              print(decoded['response'][0]['photo_50']);

                              setState(() {
                                group_name = decoded['response'][0]['name'];
                                closed = decoded['response'][0]['is_closed'];
                                icon = Image.network(decoded['response'][0]['photo_50']);
                              });
                            });
                          },
                          child: const Text("SHOW"),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    DropdownButton(               // LIST
                      value: currentItem,
                        icon: Icon(Icons.keyboard_arrow_down),
                        items: reqs.map((String item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(item)
                          );
                        }).toList(),
                      onChanged: (value){
                        setState(() {
                          currentItem = value!;
                        });
                      },
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
                  child: getList(),

                ),
              

              ],
            ),
            
          ),

          Align(
            alignment: const FractionalOffset(0.99, 0.99),
            child: SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                child: const Text("BACK"),
                onPressed: () { 
                  Navigator.pushNamed(
                    context, 
                    "/Home"
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }



  getList(){
    if (currentItem == "groups.getOnlineStatus"){
      return Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("status:  ",
                    //textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
                  ),
                  const SizedBox(height: 10), //SPACE BETWEEN

              Text("$status",
                //textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 99, 0, 90), fontSize: 24, decoration: TextDecoration.none),
              ),
              const SizedBox(height: 10), //SPACE BETWEEN
            ]
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("minutes:  ",
                    //textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
                  ),
                  const SizedBox(height: 10), //SPACE BETWEEN

              Text("$minutes",
                //textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 99, 0, 90), fontSize: 24, decoration: TextDecoration.none),
              ),
              const SizedBox(height: 10), //SPACE BETWEEN
            ]
          ),
          

        ],
      );
    }
    if (currentItem == "groups.getMembers"){
      return Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("count:  ",
                    //textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 24, decoration: TextDecoration.none),
                  ),
                  const SizedBox(height: 10), //SPACE BETWEEN

              Text("$count",
                //textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 99, 0, 90), fontSize: 24, decoration: TextDecoration.none),
              ),
              const SizedBox(height: 10), //SPACE BETWEEN
            ]
          ),

        ],
      );
    }
    if (currentItem == "groups.getById"){
      return  Column(
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

              Text("$closed",
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
      );
    }
  }
}