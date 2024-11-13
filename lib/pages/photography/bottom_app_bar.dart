import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _navigationItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.calendar_month_outlined, 'label': 'Calendar'},
    {'icon': Icons.chat, 'label': 'Chat'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _navigationItems.asMap().entries.map((entry) {
          int index = entry.key;
          var item = entry.value;
          bool isActive = _selectedIndex == index;

          return GestureDetector(
            onTap: () {
              _onItemTapped(index);
              if (index == 0) {
                GoRouter.of(context).go(Uri(path: '/').toString());
              }
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(31, 0, 0, 22),
              padding: isActive
                  ? const EdgeInsets.symmetric(horizontal: 32, vertical: 6)
                  : const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              decoration: isActive
                  ? BoxDecoration(
                      color: const Color(0xFF3742FA),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x663742FA),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        ),
                      ],
                    )
                  : null,
              child: Row(
                children: [
                  Icon(
                    item['icon'],
                    size: 24,
                    color: isActive
                        ? Colors.white
                        : const Color(0xFF2F3542).withOpacity(0.5),
                  ),
                  if (isActive)
                    const SizedBox(width: 8), // Gap between icon and text
                  if (isActive)
                    Text(
                      item['label'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
