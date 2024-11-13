import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:world_travel/config/router/approute.dart';

class WorldTravelHomePage extends StatefulWidget {
  const WorldTravelHomePage({super.key});

  @override
  State<WorldTravelHomePage> createState() => _WorldTravelHomePageState();
}

class _WorldTravelHomePageState extends State<WorldTravelHomePage> {
  @override
  void initState() {
    super.initState();
    // Start a timer that triggers after 5 seconds
    Timer(
      const Duration(seconds: 2),
      () {
        // Navigate to the next page using GoRouter
        GoRouter.of(context)
            .go(Uri(path: AppRoute.worldTravelCarousalPage).toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF4B4B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 93,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
            child: Image.asset(
              "assets/images/baroon.png",
              width: 90,
              height: 207,
            ),
          ),
          // const SizedBox(
          //   height: 174.58,
          // ),
          const Center(
            child: Text(
              "WorldTravel",
              style: TextStyle(
                fontFamily: "NovaScript",
                fontSize: 48,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                color: Color(0xFFFFFFFF),
                height: 1.21,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 73.72, 0),
              child: Image.asset(
                "assets/images/baroom_2.png",
                width: 91.34,
                height: 205.88,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
