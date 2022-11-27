import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter_application_1/Model/UserData/UserData.dart';

import 'package:flutter_application_1/Model/Requests.dart';

class RegData{
  static var regData = UserData();

  static setLogin(value) => regData.login = value;
  static setPassword(value) => regData.password = value;
  static getRegData() => regData;
  static signUpBtn() => Requests.regData(regData.stringify());
}