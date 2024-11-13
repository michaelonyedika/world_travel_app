import 'package:flutter/material.dart';

class LetsTravelAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LetsTravelAppBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(70); // Customize AppBar height if needed

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Padding(
        padding: EdgeInsets.only(left: 25, top: 10),
        child: Text(
          "Let’s Travel",
          style: TextStyle(
            fontFamily: 'Work Sans',
            fontSize: 25,
            fontWeight: FontWeight.w600,
            height: 29.33 / 25,
            color: Color(0xFF3A4256),
          ),
        ),
      ),
      leadingWidth: 141, // Set leading width
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30.75, top: 10),
          child: Image.asset(
            "assets/images/hamburger menu.png",
            height: 19.25,
            width: 27.5,
          ),
        ),
      ],
    );
  }
}
