import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336,
      height: 50,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F9FD),
        border: Border.all(
          color: const Color(0xFFEDF1FA),
        ),
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search your favourite place!",
                border: InputBorder.none,
                hintStyle: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    height: 15.85 / 13),
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
