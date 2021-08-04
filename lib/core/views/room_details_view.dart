import 'package:flutter/material.dart';
import 'package:gamerz/core/models/models.dart';
import 'package:gamerz/core/viewmodels/rooms_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RoomDetailsView extends StatelessWidget {
  final Room room;
  const RoomDetailsView({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RoomsViewModel>.reactive(
      viewModelBuilder: () => RoomsViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Room Details"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Text("Room Name: ${room.roomName}"),
                ),
                Card(
                  child: Text("Room Id: ${room.roomId}"),
                ),
                Card(
                  child: Text("Room Password: ${room.roomPassword}"),
                ),
                Card(
                  child: Text("Room Mode: ${room.roomMode}"),
                ),
                Card(
                  child: Text("Room Type: ${room.roomType}"),
                ),
                Card(
                  child: Text("Room Map: ${room.roomMap}"),
                ),
                Card(
                  child: Text("Room Rules: ${room.roomRules}"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
