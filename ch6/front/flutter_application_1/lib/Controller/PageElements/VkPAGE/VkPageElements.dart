import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/View/Elements.dart';
import 'package:flutter_application_1/View/Pages/TablesPAGE.dart';

import 'package:flutter_application_1/Model/VkPageModeling.dart';

import 'package:flutter/material.dart';


class VkPageElements {

  static groupId() {
    return TextField(
      decoration: const InputDecoration(
        labelText: 'your group_id',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      onChanged: (value) {
        VkPageModeling.setGroupId(value);
      },
      maxLines: null,
    );
  }

  static fieldToken() {
    return TextField(
      decoration: const InputDecoration(
        labelText: 'your group token',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal)
        ),
      ),
      onChanged: (value) {
        VkPageModeling.setGroupToken(value);
      },
      maxLines: null,
    );
  }

  static sendGroupToken(context){
    return ElevatedButton( // BUTTON NEXT
      onPressed: (){
        VkPageModeling.nextBtn()
        .then((data){
          print(data);

          Map val = jsonDecode(data);
          print(val['response'][0]['name']);
          print(val['response'][0]['is_closed']);
          print(val['response'][0]['photo_50']);
        });
      },
      child: const Text("NEXT"),
    );
  }

}