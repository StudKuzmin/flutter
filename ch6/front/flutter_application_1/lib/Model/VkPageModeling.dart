import 'package:flutter_application_1/Model/Requests.dart';

import 'package:flutter_application_1/Model/Requests.dart';

class VkPageModeling{
  static var groupToken = 'UNDEFINED';
  static var groupId = 'UNDEFINED';

  static setGroupId(value) => groupId = value;
  static getGroupId() => groupId;

  static setGroupToken(value) => groupToken = value;
  static getGroupToken() => groupToken;

  static nextBtn() => Requests.getById(groupId, groupToken);
}