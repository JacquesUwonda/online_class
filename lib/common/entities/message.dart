import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  String? docId;
  String? token;
  String? name;
  String? avatar;
  String? lastMsg;
  Timestamp? lastTime;
  int? msgNum;
  int? online;

  Message({
    this.docId,
    this.token,
    this.name,
    this.avatar,
    this.lastMsg,
    this.lastTime,
    this.msgNum,
    this.online,
  });
}

class CallMessage {
  String? docId;
  String? token;
  String? name;
  String? avatar;
  String? callTime;
  String? type;
  Timestamp? lastTime;

  CallMessage({
    this.docId,
    this.token,
    this.name,
    this.avatar,
    this.callTime,
    this.type,
    this.lastTime,
  });
}
