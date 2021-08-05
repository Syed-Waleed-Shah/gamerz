// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../core/models/models.dart' as _i4;
import '../core/viewmodels/rooms_viewmodel.dart' as _i5;
import '../core/views/views.dart' as _i3;

class MyRouter extends _i1.RootStackRouter {
  MyRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeViewArgs>(orElse: () => const HomeViewArgs());
          return _i3.HomeView(key: args.key);
        }),
    RoomsView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.RoomsView();
        }),
    RoomDetailsView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<RoomDetailsViewArgs>();
          return _i3.RoomDetailsView(key: args.key, room: args.room);
        }),
    CreateRoomView.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<CreateRoomViewArgs>();
          return _i3.CreateRoomView(key: args.key, model: args.model);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeView.name, path: '/'),
        _i1.RouteConfig(RoomsView.name, path: '/rooms-view'),
        _i1.RouteConfig(RoomDetailsView.name, path: '/room-details-view'),
        _i1.RouteConfig(CreateRoomView.name, path: '/create-room-view')
      ];
}

class HomeView extends _i1.PageRouteInfo<HomeViewArgs> {
  HomeView({_i2.Key? key})
      : super(name, path: '/', args: HomeViewArgs(key: key));

  static const String name = 'HomeView';
}

class HomeViewArgs {
  const HomeViewArgs({this.key});

  final _i2.Key? key;
}

class RoomsView extends _i1.PageRouteInfo {
  const RoomsView() : super(name, path: '/rooms-view');

  static const String name = 'RoomsView';
}

class RoomDetailsView extends _i1.PageRouteInfo<RoomDetailsViewArgs> {
  RoomDetailsView({_i2.Key? key, required _i4.Room room})
      : super(name,
            path: '/room-details-view',
            args: RoomDetailsViewArgs(key: key, room: room));

  static const String name = 'RoomDetailsView';
}

class RoomDetailsViewArgs {
  const RoomDetailsViewArgs({this.key, required this.room});

  final _i2.Key? key;

  final _i4.Room room;
}

class CreateRoomView extends _i1.PageRouteInfo<CreateRoomViewArgs> {
  CreateRoomView({_i2.Key? key, required _i5.RoomsViewModel model})
      : super(name,
            path: '/create-room-view',
            args: CreateRoomViewArgs(key: key, model: model));

  static const String name = 'CreateRoomView';
}

class CreateRoomViewArgs {
  const CreateRoomViewArgs({this.key, required this.model});

  final _i2.Key? key;

  final _i5.RoomsViewModel model;
}
