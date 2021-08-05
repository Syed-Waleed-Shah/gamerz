import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gamerz/core/views/views.dart';
import 'package:gamerz/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final _appRouter = MyRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigation Tutorial',
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, router) => router!,
    );

    // (
    //   debugShowCheckedModeBanner: false,
    //   title: 'Gamerz',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: HomeView(),
    // );
  }
}
