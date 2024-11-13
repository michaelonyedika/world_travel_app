import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final Color backgroundColor;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.backgroundColor,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A1B242F), // with 10% opacity
            offset: Offset(0, 4),
            blurRadius: 200,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 0),
          _buildNavItem(Icons.notifications, 1),
          _buildNavItem(Icons.person, 2),
          _buildNavItem(Icons.arrow_forward, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        margin: EdgeInsets.only(top: 25, bottom: 23),
        child: Icon(
          icon,
          size: 22,
          color: Colors.white, // Adjust this if you need different colors
        ),
      ),
    );
  }
}
