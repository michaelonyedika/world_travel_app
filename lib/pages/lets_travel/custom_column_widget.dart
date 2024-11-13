import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  const CustomColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 377,
      height: 440,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFC3C9D2),
            offset: Offset(0, 1),
            blurRadius: 40,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Item
          Container(
            padding: EdgeInsets.only(left: 27),
            color: Color(0xFF585DF9),
            height: 50,
            child: const Row(
              children: [
                Icon(Icons.location_on, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  '40+ best locations found near you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // Second Item
          Padding(
            padding: EdgeInsets.only(left: 20, top: 33),
            child: Row(
              children: [
                // Left Image
                Container(
                  width: 122.98,
                  height: 139,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.74),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/eagle_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                // Right Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '1.4 KM AWAY',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        fontWeight: FontWeight.w700,
                        height: 1.22,
                        letterSpacing: 0.075,
                        color: Color(0xFFACB1D9),
                      ),
                    ),
                    const Text(
                      'Red River National Park',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        letterSpacing: 0.02,
                        color: Color(0xFF3A3C6A),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.location_on,
                              size: 14, color: Color(0xFF585DF9)),
                        ),
                        SizedBox(width: 5),
                        const Text(
                          'Mumbai, India',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            height: 1.22,
                            letterSpacing: 0.02,
                            color: Color(0xFF3A3C6A),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: 116,
                      height: 31.31,
                      decoration: BoxDecoration(
                        color: Color(0xFF585DF9),
                        borderRadius: BorderRadius.circular(4.72),
                      ),
                      child: const Center(
                        child: Text(
                          'View Location',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.02,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Third Item
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Details',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.22,
                    letterSpacing: 0.02,
                    color: Color(0xFF16183B),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Proin eros magna, congue sed tortor non, feugiat congue. '
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Proin eros magna, congue sed tortor non, feugiat congue.',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    height: 1.61,
                    letterSpacing: 0.02,
                    color: Color(0xFF3C3760),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
