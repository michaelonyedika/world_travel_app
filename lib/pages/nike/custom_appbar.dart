import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 379,
      height: 54,
      margin: const EdgeInsets.only(top: 10, left: 27, right: 22),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white, // Customize the background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Icon Button
          Image.asset(
            'assets/images/menu.png', // Replace with your logo image path
            width: 29,
            height: 29,
          ),
          // Center Logo
          Image.asset(
            'assets/images/nike.png', // Replace with your logo image path
            width: 106,
            height: 34,
          ),
          // Right Cart Icon
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            iconSize: 32,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
