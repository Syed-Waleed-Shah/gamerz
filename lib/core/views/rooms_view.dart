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
        body: StreamBuilder<List<Room>>(
            stream: model.getRoomsStream(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text("unable to load rooms"));
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView(
                children: snapshot.data!.map((Room room) {
                  return ListTile(
                    title: Text(room.roomName),
                    subtitle: Text("${room.roomId} - ${room.roomPassword}"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RoomDetailsView(room: room)));
                    },
                  );
                }).toList(),
              );
            }),

        // StreamBuilder<QuerySnapshot>(
        //   stream: RoomsService().roomsStream,
        //   builder: (context, snapshot) {
        //     if (snapshot.hasError) {
        //       return Text("unable to load rooms");
        //     }
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return CircularProgressIndicator();
        //     }
        //     return ListView(
        //       children: snapshot.data!.docs.map((DocumentSnapshot document) {
        //         Room room =
        //             Room.fromMap(document.data() as Map<String, dynamic>);
        //         return ListTile(
        //           title: Text(room.roomName),
        //           subtitle: Text("${room.roomId} - ${room.roomPassword}"),
        //           onTap: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => RoomDetailsView(room: room)));
        //           },
        //         );
        //       }).toList(),
        //     );
        //   },
        // ),
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
