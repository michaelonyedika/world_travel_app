import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 89,
      margin: const EdgeInsets.only(left: 30, right: 19),
      decoration: BoxDecoration(
        color: Color(0xFF232539),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Column Item
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Complete Profile 😊",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 26 / 14,
                    letterSpacing: 0.02,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 0), // Small spacing between the two texts
                Text(
                  "Complete your personal information",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 23 / 12,
                    letterSpacing: 0.02,
                    color: Color(0xFFB4B5BA),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          // Right Icon Item with GestureDetector for navigation
          GestureDetector(
            onTap: () {
              context.go('/lets_travel_profile_page');
            },
            child: Container(
              width: 42,
              height: 42,
              margin: EdgeInsets.only(right: 24),
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Color(0xFF585DF9),
                borderRadius: BorderRadius.circular(52),
              ),
              child: const Icon(
                Icons.arrow_forward, // Replace with the icon you need
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
