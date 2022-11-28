import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_application_1/Controller/Consts.dart';

class Requests {

  static Future<dynamic> regData(regData) async {
    // var regData = jsonEncode({'login':'test','password':'10'});

    var response = await http.post(Uri.parse('${Consts.url}/regData'), 
                                  headers: {
                                    "Content-Type": "application/json; charset=UTF-8",
                                    "Accept": "application/json",
                                  },
                                  body: regData);

    return response.body;
  }
  static Future<dynamic> logData(logData) async {
    //var logData = jsonEncode({'login':'test','password':'10'});

    var response = await http.post(Uri.parse('${Consts.url}/logData'), 
                                  headers: {
                                    "Content-Type": "application/json; charset=UTF-8",
                                    "Accept": "application/json",
                                  },
                                  body: logData);

    return response.body;
  }
  static Future<dynamic> tables(token) async {
    //var logData = jsonEncode({'login':'test','password':'10'});

    var response = await http.get(Uri.parse('${Consts.url}/tables'), 
                                  headers: {
                                    "Content-Type": "application/json; charset=UTF-8",
                                    "Accept": "application/json",
                                    "Authentication": token,
                                  });

    return response.body;
  }
}