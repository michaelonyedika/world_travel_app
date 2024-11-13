import 'package:flutter/material.dart';
import 'package:world_travel/pages/lets_travel/custom_bottom_navigation_bar_2.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_app_bar.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_search_box.dart';
import 'package:world_travel/pages/lets_travel/popular_location_column.dart';
import 'package:world_travel/pages/lets_travel/weekday_calender.dart';

class LetsTravelHomePage extends StatelessWidget {
  const LetsTravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LetsTravelAppBar(),
      body: MyHome(),
      bottomNavigationBar: CustomBottomNavigationBar_2(
        backgroundColor: Color(0xFFFC4F40),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          SearchBox(),
          SizedBox(
            height: 18,
          ),
          SelectedLocation(),
          SizedBox(
            height: 26,
          ),
          PopularLocationsColumn(),
          SizedBox(
            height: 28,
          ),
          WeekdayCalendar(
            rowBackgroundColor: Color(0xFFFFC1C1),
            selectedDayColor: Color(0xFFFF5F5F),
          ),
          SizedBox(
            height: 39,
          ),
        ],
      ),
    );
  }
}

class SelectedLocation extends StatelessWidget {
  const SelectedLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 117,
      margin: const EdgeInsets.only(right: 12, left: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Color(0x1E1C2E14),
            offset: Offset(0, 24),
            blurRadius: 48,
          ),
        ],
      ),
      child: Row(
        children: [
          // Image with circular radius and shadow
          Container(
            width: 69,
            height: 69,
            margin: const EdgeInsets.only(
                left: 24,
                top: 24,
                bottom: 24), // Positioning based on requirements
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xF7627B52),
                  offset: Offset(0, 8),
                  blurRadius: 16,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/boat_backgound.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16), // Spacing between image and text column

          // Column with two Text widgets
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selected Location",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 18.75 / 16,
                  color: Color(0xFF211B3F),
                ),
              ),
              SizedBox(height: 1), // Spacing between texts
              Text(
                "3 days ago",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 14.06 / 12,
                  color: Color(0xFF9E9DA4),
                ),
              ),
            ],
          ),

          Spacer(),

          // Mark icon with background color and positioning
          Container(
            width: 24,
            height: 24,
            margin: const EdgeInsets.only(top: 46, right: 27, bottom: 46),
            decoration: const BoxDecoration(
              color: Color(0xFFFF5F5F),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
