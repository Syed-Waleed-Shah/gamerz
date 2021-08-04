import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:gamerz/core/models/models.dart';
import 'package:gamerz/core/services/firestore_service.dart';
import 'package:stacked/stacked.dart';

class RoomsViewModel extends BaseViewModel {
  final FirestoreService fs = FirestoreService();
  TextEditingController gameNameCtrl = TextEditingController();
  TextEditingController roomNameCtrl = TextEditingController();
  TextEditingController roomIdCtrl = TextEditingController();
  TextEditingController roomPasswordCtrl = TextEditingController();
  TextEditingController roomModeCtrl = TextEditingController();
  TextEditingController roomTypeCtrl = TextEditingController();
  TextEditingController roomMapCtrl = TextEditingController();
  TextEditingController roomRulesCtrl = TextEditingController();

  init() {}

  Future<void> createRoom() async {
    Room room = Room(
      gameName: gameNameCtrl.text,
      roomName: roomNameCtrl.text,
      roomId: roomIdCtrl.text,
      roomPassword: roomPasswordCtrl.text,
      roomMode: roomModeCtrl.text,
      roomType: roomTypeCtrl.text,
      roomMap: roomMapCtrl.text,
      roomRules: roomRulesCtrl.text,
      userId: "temp-7548578",
    );
    return await fs.db.collection('rooms').doc().set(room.toJson());
  }
}
