import 'package:flutter/material.dart';
import 'package:world_travel/config/router/route_list.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize GoRouter with routes

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router(),
      title: "WorldTravel",
    );
  }
}
