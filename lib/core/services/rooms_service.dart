import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gamerz/core/services/firestore_service.dart';

class RoomsService extends FirestoreService {
  Stream<QuerySnapshot> roomsStream = Stream.empty();
  RoomsService() {
    roomsStream = db.collection('rooms').snapshots();
  }
}
