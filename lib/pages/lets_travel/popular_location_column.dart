import 'package:flutter/material.dart';

class PopularLocationsColumn extends StatelessWidget {
  const PopularLocationsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 292,
      margin: const EdgeInsets.only(left: 22, right: 0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Text
          Padding(
            padding: EdgeInsets.only(left: 22, bottom: 22),
            child: Text(
              "Popular Locations near you!",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                height: 16.46 / 13.5,
                letterSpacing: 0.02,
                color: Color(0xFF3A4256),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Center Row of Image Containers
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // First Image Container
              Flexible(
                child: LocationImageContainer(
                  imageUrl: 'assets/images/bird_background.jpeg',
                  mainText: "The Beauty of\namazing India!",
                  locationText: "Kashmir, India",
                ),
              ),
              SizedBox(width: 0), // Space between images
              // Second Image Container
              Flexible(
                child: LocationImageContainer(
                  imageUrl: 'assets/images/boat_backgound.png',
                  mainText: "Explore best sunsets\nin Maldives",
                  locationText: "Maldives",
                ),
              ),
            ],
          ),
          // Bottom Text
          Padding(
            padding: EdgeInsets.only(left: 31, top: 37),
            child: Text(
              "Showing for Wednesday.",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 13.5,
                fontWeight: FontWeight.w600,
                height: 16.46 / 13.5,
                letterSpacing: 0.02,
                color: Color(0xFF3A4256),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

class LocationImageContainer extends StatelessWidget {
  final String imageUrl;
  final String mainText;
  final String locationText;

  const LocationImageContainer({
    super.key,
    required this.imageUrl,
    required this.mainText,
    required this.locationText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 201,
      margin: EdgeInsets.only(left: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main Text
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 143),
            child: Text(
              mainText,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 11,
                fontWeight: FontWeight.w600,
                height: 13.57 / 11,
                letterSpacing: 0.02,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          // Location Row
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 10),
            child: Row(
              children: [
                // Location Icon
                Container(
                  width: 6.32,
                  height: 7.49,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF9635),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 4),
                // Location Text
                Text(
                  locationText,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    height: 9.75 / 8,
                    letterSpacing: 0.02,
                    color: Colors.white,
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
