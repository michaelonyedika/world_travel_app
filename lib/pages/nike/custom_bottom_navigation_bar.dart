import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 62,
      margin: const EdgeInsets.fromLTRB(35, 0, 35, 20),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(55),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: _selectedIndex == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home_outlined),
            iconSize: 24,
            color: Colors.black,
            onPressed: () {
              _onItemTapped(0);
              GoRouter.of(context).go(Uri(path: '/').toString());
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 24,
            color: _selectedIndex == 1 ? Colors.grey : Colors.black,
            onPressed: () => _onItemTapped(1),
          ),
          IconButton(
            icon: _selectedIndex == 2
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_outline),
            iconSize: 24,
            color: Colors.black,
            onPressed: () => _onItemTapped(2),
          ),
          IconButton(
            icon: _selectedIndex == 3
                ? const Icon(Icons.person_2)
                : const Icon(Icons.person_2_outlined),
            iconSize: 24,
            color: Colors.black,
            onPressed: () => _onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
