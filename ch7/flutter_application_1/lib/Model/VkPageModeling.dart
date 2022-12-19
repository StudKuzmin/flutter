import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter_application_1/Model/Requests.dart';

class VkPageModeling{
  static var groupToken = 'UNDEFINED';
  static var groupId = 'UNDEFINED';

  static setGroupId(value) => groupId = value;
  static getGroupId() => groupId;

  static setGroupToken(value) => groupToken = value;
  static getGroupToken() => groupToken;

  static showBtn() => Requests.getById(groupId, groupToken);

  static reqGetById() => Requests.getById(groupId, groupToken);
  static reqGetMembers() => Requests.getMembers(groupId, groupToken);
  static regGetOnlineStatus() => Requests.getOnlineStatus(groupId, groupToken);

  static doRequest(req){
    if (req == "groups.getById"){
      return Requests.getById(groupId, groupToken);
    }
    if (req == "groups.getMembers"){
      return Requests.getMembers(groupId, groupToken);
    }
    if (req == "groups.getOnlineStatus"){
      return Requests.getOnlineStatus(groupId, groupToken);
    }


  }
}