import 'package:flutter/material.dart';

class HorizontalScrollRow extends StatelessWidget {
  const HorizontalScrollRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildColumn(
              "assets/images/bird_background.jpeg",
              "India",
              Color(0xFF585DF9),
              Color(0xFFFF908D),
              Color(0xFFFFDBDA),
            ),
            buildColumn(
              "assets/images/eagle_background.png",
              "India",
              Color(0xFF585DF9),
              Color(0xFFFF908D),
              Color(0xFFFFDBDA),
            ),
            buildColumn(
              "assets/images/water_background.png",
              "India",
              Color(0xFFFF4641),
              Color(0xFFFF908D),
              Color(0xFFFFDBDA),
            ),
            buildColumn(
              "assets/images/cloud_background.jpeg",
              "India",
              Color(0xFF585DF9),
              Color(0xFFFF908D),
              Color(0xFFFFDBDA),
            ),
            buildColumn(
              "assets/images/boat_backgound.png",
              "India",
              Color(0xFF585DF9),
              Color(0xFFFF908D),
              Color(0xFFFFDBDA),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildColumn(
      String imagePath, String text, Color color1, Color color2, Color color3) {
    return Container(
      width: 68,
      height: 88,
      margin: EdgeInsets.only(left: 11),
      child: Column(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [color1, color2, color3],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2), // Border thickness
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, // Background color for inner container
                ),
                padding: EdgeInsets.all(7),
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: 54,
                    height: 54,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.17, // Line height
              letterSpacing: 0.02,
              color: Color(0xFF091D60),
            ),
          ),
        ],
      ),
    );
  }
}
