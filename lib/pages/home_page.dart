import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:world_travel/config/router/approute.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home Page"),
            const SizedBox(
              height: 20,
            ),
            FilledButton.tonal(
              onPressed: () {
                context.go(AppRoute.worldTravelHomePage);
              },
              child: const Text("World Travel Home Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton.tonal(
              onPressed: () {
                context.go(AppRoute.nikeHomePage);
              },
              child: const Text("Nike Home Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton.tonal(
              onPressed: () {
                context.go(AppRoute.photographyHomePage);
              },
              child: const Text("Photography Home Page"),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton.tonal(
              onPressed: () {
                context.go(AppRoute.letstravelHomePage);
              },
              child: const Text("Lets Travel Home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
