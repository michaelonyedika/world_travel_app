import 'package:flutter/material.dart';
import 'package:world_travel/pages/lets_travel/custom_column_widget.dart';
import 'package:world_travel/pages/lets_travel/horizontal_scroll_row.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_app_bar.dart';
import 'package:world_travel/pages/lets_travel/profile_row.dart';

class LetsTravelDashboardPage extends StatelessWidget {
  const LetsTravelDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: LetsTravelAppBar(),
      body: LetsTravelDashboardBody(),
    );
  }
}

class LetsTravelDashboardBody extends StatelessWidget {
  const LetsTravelDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          HorizontalScrollRow(),
          SizedBox(
            height: 32,
          ),
          ProfileRow(),
          SizedBox(
            height: 32,
          ),
          CustomColumnWidget(),
        ],
      ),
    );
  }
}
