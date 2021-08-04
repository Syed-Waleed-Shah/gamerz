import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gamerz/core/models/models.dart';
import 'package:gamerz/core/services/rooms_service.dart';
import 'package:gamerz/core/viewmodels/viewmodels.dart';
import 'package:gamerz/core/views/create_room_view.dart';
import 'package:gamerz/core/views/room_details_view.dart';
import 'package:stacked/stacked.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RoomsViewModel>.reactive(
      onModelReady: (model) => model.init(),
      viewModelBuilder: () => RoomsViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Rooms"),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: RoomsService().roomsStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("unable to load rooms");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                return ListTile(
                  title: Text(document['roomName']),
                  subtitle: Text(
                      "${document['roomId']} - ${document['roomPassword']}"),
                  onTap: () {
                    Room room = Room.fromJson(document);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomDetailsView(room: room)));
                  },
                );
              }).toList(),
            );
          },
        ),
        floatingActionButton: ElevatedButton(
          child: Text("Add Room"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AddRoomScreen(model: model)));
          },
        ),
      ),
    );
  }
}
