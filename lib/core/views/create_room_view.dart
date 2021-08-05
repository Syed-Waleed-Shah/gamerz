import 'package:flutter/material.dart';
import 'package:gamerz/core/viewmodels/viewmodels.dart';
import 'package:stacked/stacked.dart';

class CreateRoomView extends StatelessWidget {
  final RoomsViewModel model;
  const CreateRoomView({
    Key? key,
    required RoomsViewModel this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Room"),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: model.gameNameCtrl,
                  decoration: InputDecoration(hintText: "Game Name"),
                ),
                TextField(
                  controller: model.roomNameCtrl,
                  decoration: InputDecoration(hintText: "Room Name"),
                ),
                TextField(
                  controller: model.roomIdCtrl,
                  decoration: InputDecoration(hintText: "Room Id"),
                ),
                TextField(
                  controller: model.roomPasswordCtrl,
                  decoration: InputDecoration(hintText: "Room Password"),
                ),
                TextField(
                  controller: model.roomModeCtrl,
                  decoration: InputDecoration(hintText: "Room Mode"),
                ),
                TextField(
                  controller: model.roomTypeCtrl,
                  decoration: InputDecoration(hintText: "Room Type"),
                ),
                TextField(
                  controller: model.roomMapCtrl,
                  decoration: InputDecoration(hintText: "Map"),
                ),
                TextField(
                  controller: model.roomRulesCtrl,
                  decoration: InputDecoration(hintText: "Room Rules"),
                ),
                ElevatedButton(
                    onPressed: () {
                      model.createRoom().then((value) {
                        print('room created successfully');
                        Navigator.pop(context);
                      });
                    },
                    child: Text("Add Room"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
