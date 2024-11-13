import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar_2 extends StatelessWidget {
  final Color backgroundColor;

  CustomBottomNavigationBar_2({required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A1B242F),
            offset: Offset(0, 4),
            blurRadius: 200,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, context, '/'),
          _buildNavItem(
              Icons.notifications, context, "/lets_travel_dashboard_page"),
          _buildNavItem(Icons.person, context, "/lets_travel_dashboard_page"),
          _buildNavItem(
              Icons.arrow_forward, context, "/lets_travel_dashboard_page"),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, BuildContext context, String route) {
    return GestureDetector(
      onTap: () {
        context.go(route);
      },
      child: Container(
        margin: EdgeInsets.only(top: 25, bottom: 23),
        child: Icon(
          icon,
          size: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
