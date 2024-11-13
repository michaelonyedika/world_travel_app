import 'package:flutter/material.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 569,
      height: 424,
      margin: const EdgeInsets.only(left: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Item
          Row(
            children: [
              // Profile Image
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/profile_image.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Text Row
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Peace Garden,",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          height: 18.75 / 16,
                          letterSpacing: 0.8,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Recommended",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          height: 11.72 / 10,
                          letterSpacing: 0.8,
                          color: Color(0xFF585DF9),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mumbai, India",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 16.41 / 14,
                          letterSpacing: 0.7,
                          color: Color(0xFFC5C5C5),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "10km away",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 16.41 / 14,
                          letterSpacing: 0.7,
                          color: Color(0xFFC5C5C5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Second Item - Horizontal Scrollable Row with Images
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 270,
                  height: 314,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/green_background.jpeg'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 270,
                  height: 314,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/eagle_background.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Third Item - Row with Icons and Text
          Container(
            width: 324,
            height: 30,
            child: Row(
              children: [
                // Favorite Icon and Count
                Row(
                  children: [
                    Icon(Icons.favorite_outline, size: 30),
                    const SizedBox(width: 5),
                    Text(
                      "67",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 16.41 / 14,
                        letterSpacing: 0.7,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),

                // Comment Icon and Count
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      size: 30,
                      color: Color(0xFFC5CEE0),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "137",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 16.41 / 14,
                        letterSpacing: 0.7,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Spacer(),

                // 3 Dots Icon
                Icon(
                  Icons.more_horiz,
                  size: 22.5,
                  color: Color(0xFFC5CEE0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
