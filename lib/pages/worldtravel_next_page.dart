import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorldTravelNextPage extends StatelessWidget {
  const WorldTravelNextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "World Travel Next Page",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonal(
              onPressed: () {
                GoRouter.of(context).go(Uri(path: '/').toString());
              },
              child: const Text("Home"))
        ],
      ),
    );
  }
}
