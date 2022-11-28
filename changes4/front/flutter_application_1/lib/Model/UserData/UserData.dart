import 'dart:convert';

class UserData {
  String login = "UNDEFINED";
  String password = "UNDEFINED";


  setLogin(login){
    this.login = login;
  }
  setPassword(password){
    this.password = password;
  }
  toJSON() => jsonDecode('{"login": "${this.login}", "password": "${this.password}"}');
  stringify() => jsonEncode(toJSON());
}