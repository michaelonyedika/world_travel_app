import 'package:flutter/material.dart';

class WeekdayCalendar extends StatefulWidget {
  final Color rowBackgroundColor;
  final Color selectedDayColor;

  const WeekdayCalendar({
    Key? key,
    required this.rowBackgroundColor,
    required this.selectedDayColor,
  }) : super(key: key);

  @override
  _WeekdayCalendarState createState() => _WeekdayCalendarState();
}

class _WeekdayCalendarState extends State<WeekdayCalendar> {
  int? selectedDayIndex = 2;

  final days = [
    {"day": "Mo", "date": "7"},
    {"day": "Tu", "date": "8"},
    {"day": "We", "date": "9"},
    {"day": "Th", "date": "10"},
    {"day": "Fri", "date": "11"},
    {"day": "Sa", "date": "12"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334.28,
      height: 78,
      margin: const EdgeInsets.only(right: 17.72, left: 24),
      padding: const EdgeInsets.symmetric(horizontal: 25.25, vertical: 18.83),
      decoration: BoxDecoration(
        color: widget.rowBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(days.length, (index) {
          final isSelected = selectedDayIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedDayIndex = index;
              });
            },
            child: Container(
              width: isSelected ? 36.36 : null,
              height: isSelected ? 62 : null,
              decoration: BoxDecoration(
                color:
                    isSelected ? widget.selectedDayColor : Colors.transparent,
                borderRadius: BorderRadius.circular(isSelected ? 7 : 0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    days[index]["day"]!,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 14.63 / 12,
                      letterSpacing: 0.02,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    days[index]["date"]!,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
