import 'package:auto_route/auto_route.dart';
import 'package:gamerz/core/views/views.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, initial: true),
    AutoRoute(page: RoomsView),
    AutoRoute(page: RoomDetailsView),
    AutoRoute(page: CreateRoomView),
  ],
)
class $MyRouter {}
