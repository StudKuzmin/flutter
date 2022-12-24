import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter_application_1/Model/Requests.dart';

class VkPageModeling{
  static var groupToken = 'UNDEFINED';
  static var groupId = 'UNDEFINED';

  static setGroupId(value) => groupId = value;
  static getGroupId() => groupId;

  static setGroupToken(value) => groupToken = value;
  static getGroupToken() => groupToken;

  static showBtn() => Requests.getById(groupId);

  static reqGetById() => Requests.getById(groupId);
  static reqGetMembers() => Requests.getMembers(groupId);
  static regGetOnlineStatus() => Requests.getOnlineStatus(groupId);

  static doRequest(req){
    if (req == "groups.getById"){
      return Requests.getById(groupId);
    }
    if (req == "groups.getMembers"){
      return Requests.getMembers(groupId);
    }
    if (req == "groups.getOnlineStatus"){
      return Requests.getOnlineStatus(groupId);
    }


  }
}