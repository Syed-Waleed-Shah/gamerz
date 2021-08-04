import 'package:cloud_firestore/cloud_firestore.dart';

class Room {
  final String? id;
  final String gameName;
  final String roomName;
  final String roomId;
  final String roomPassword;
  final String roomMode;
  final String roomType;
  final String roomMap;
  final String userId;
  final String? roomRules;

  Room({
    required this.gameName,
    required this.roomName,
    required this.roomId,
    required this.roomPassword,
    required this.roomMode,
    required this.roomType,
    required this.roomMap,
    required this.userId,
    this.roomRules,
    this.id,
  });

  static Room fromJson(DocumentSnapshot json) {
    return Room(
      gameName: json['gameName'],
      roomName: json['roomName'] ?? '',
      roomId: json['roomId'] ?? '',
      roomPassword: json['roomPassword'] ?? '',
      roomMode: json['roomMode'] ?? '',
      roomType: json['roomType'] ?? '',
      roomMap: json['roomMap'] ?? '',
      userId: json['userId'] ?? '',
      roomRules: json['roomRules'] ?? '',
    );
  }

  static Room fromMap(Map<String, dynamic> json) {
    return Room(
      gameName: json['gameName'] ?? '',
      roomName: json['roomName'],
      roomId: json['roomId'],
      roomPassword: json['roomPassword'],
      roomMode: json['roomMode'],
      roomType: json['roomType'],
      roomMap: json['roomMap'],
      userId: json['userId'],
      roomRules: json['roomRules'],
    );
  }

  toJson() {
    return {
      'gameName': gameName,
      'roomName': roomName,
      'roomId': roomId,
      'roomPassword': roomPassword,
      'roomMode': roomMode,
      'roomType': roomType,
      'roomMap': roomMap,
      'userId': userId,
      'roomRules': roomRules,
      'timestamp': DateTime.now(),
    };
  }
}
