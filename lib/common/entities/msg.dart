import 'package:cloud_firestore/cloud_firestore.dart';

class Msg {
  final String? fromToken;
  final String? toToken;
  final String? fromName;
  final String? toName;
  final String? fromAvatar;
  final String? toAvatar;
  final int? fromOnline;
  final int? toOnline;
  final int? fromMsgNum;
  final int? toMsgNum;
  final String? lastMsg;
  final Timestamp? lastTime;
  final int? msgNum;

  Msg({
    this.fromToken,
    this.toToken,
    this.fromName,
    this.toName,
    this.fromAvatar,
    this.toAvatar,
    this.fromOnline,
    this.toOnline,
    this.fromMsgNum,
    this.toMsgNum,
    this.lastMsg,
    this.lastTime,
    this.msgNum,
  });

  factory Msg.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Msg(
      fromToken: data?['from_token'],
      toToken: data?['to_token'],
      fromName: data?['from_name'],
      toName: data?['to_name'],
      fromAvatar: data?['from_avatar'],
      toAvatar: data?['to_avatar'],
      fromOnline: data?['from_online'],
      toOnline: data?['to_online'],
      fromMsgNum: data?['from_msg_num'],
      toMsgNum: data?['to_msg_num'],
      lastMsg: data?['last_msg'],
      lastTime: data?['last_time'],
      msgNum: data?['msg_num'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (fromToken != null) "from_token": fromToken,
      if (toToken != null) "to_token": toToken,
      if (fromName != null) "from_name": fromName,
      if (toName != null) "to_name": toName,
      if (fromAvatar != null) "from_avatar": fromAvatar,
      if (toAvatar != null) "to_avatar": toAvatar,
      if (fromOnline != null) "from_online": fromOnline,
      if (toOnline != null) "to_online": toOnline,
      if (fromMsgNum != null) "from_msg_num": fromMsgNum,
      if (toMsgNum != null) "to_msg_num": toMsgNum,
      if (lastMsg != null) "last_msg": lastMsg,
      if (lastTime != null) "last_time": lastTime,
      if (msgNum != null) "msg_num": msgNum,
    };
  }
}
