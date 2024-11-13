import 'package:flutter/material.dart';
import 'package:world_travel/pages/lets_travel/custom_bottom_navigation_bar_2.dart';
import 'package:world_travel/pages/lets_travel/custom_layout.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_app_bar.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_search_box.dart';
import 'package:world_travel/pages/lets_travel/weekday_calender.dart';

class LetsTravelProfilePage extends StatelessWidget {
  const LetsTravelProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LetsTravelAppBar(),
      body: const MyBody(),
      bottomNavigationBar: CustomBottomNavigationBar_2(
        backgroundColor: Color(0xFF3A4256),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({super.key});

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
            height: 44,
          ),
          CustomLayout(),
          SizedBox(
            height: 23,
          ),
          WeekdayCalendar(
            rowBackgroundColor: Color(0xFFC6ED6B),
            selectedDayColor: Color(0xFF2B6A0D),
          ),
          SizedBox(
            height: 23,
          ),
        ],
      ),
    );
  }
}
