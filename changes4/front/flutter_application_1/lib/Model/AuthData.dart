import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter_application_1/Model/UserData/UserData.dart';

import 'package:flutter_application_1/Model/Requests.dart';

class AuthData{
  static var logData = UserData();

  static setLogin(value) => logData.login = value;
  static setPassword(value) => logData.password = value;
  static getLogData() => logData;
  static signInBtn() => Requests.logData(logData.stringify());
}