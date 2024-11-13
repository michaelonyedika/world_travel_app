import 'package:flutter/material.dart';
import 'package:world_travel/pages/photography/bottom_app_bar.dart';
import 'package:world_travel/pages/photography/custom_appbar.dart';

class PhotographyHomePage extends StatelessWidget {
  const PhotographyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: MyHome(),
      bottomNavigationBar: CustomBottomAppBar(),
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
          SizedBox(height: 32),
          SearchAndFilterRow(),
          SizedBox(height: 32),
          FilterScreen(),
          SizedBox(height: 32),
          PhotoCategories(),
          SizedBox(height: 32),
          PhotographyCards(),
        ],
      ),
    );
  }
}

class SearchAndFilterRow extends StatelessWidget {
  const SearchAndFilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 24),
        Container(
          width: 263,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                color: Color(0x2F35421A),
                offset: Offset(0, 10),
                blurRadius: 20,
              ),
            ],
          ),
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 10),
                child: Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for photos...",
                      hintStyle: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(right: 24),
          decoration: const BoxDecoration(
            color: Color(0xFF3742FA),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x803742FA),
                offset: Offset(0, 10),
                blurRadius: 20,
              ),
            ],
          ),
          child: Image.asset(
            "assets/images/filter_icon.png",
            width: 20,
            height: 13,
          ),
        ),
      ],
    );
  }
}

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<String> filters = [
    "Nature",
    "Beautiful landscape",
    "Wildlife",
    "Creative",
    "Nature",
    "Beautiful landscape",
    "Wildlife",
    "Creative"
  ];
  String selectedFilter = "Beautiful landscape";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 38,
          margin: const EdgeInsets.only(left: 24, right: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: filters.map((filter) {
                final isActive = filter == selectedFilter;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedFilter = filter;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 4),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    decoration: BoxDecoration(
                      color: isActive ? const Color(0x333742FA) : Colors.white,
                      border: Border.all(
                        color: isActive
                            ? const Color(0xFF3742FA)
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      filter,
                      style: TextStyle(
                        color:
                            isActive ? const Color(0xFF3742FA) : Colors.black,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class PhotoCategories extends StatelessWidget {
  const PhotoCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            "Recent Photography",
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              height: 1.2, // line-height as a multiplier (24px/20px)
              color: Color(0xFF2F3542),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 26),
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              "View All",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                height: 1.2, // line-height as a multiplier (14.4px/12px)
                color: Color(0xFF3742FA),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PhotographyCards extends StatelessWidget {
  const PhotographyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      // Wrapping ListView.builder in a SizedBox with a fixed height to constrain it
      child: SizedBox(
        height: 400, // Define the height you want for the horizontal list
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4, // Replace with your actual image list length
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? 24 : 15), // Apply initial left margin
              child: SizedBox(
                width: 324,
                height: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  clipBehavior: Clip.hardEdge,
                  shadowColor: Colors.black.withOpacity(0.4),
                  elevation: 10,
                  child: Stack(
                    children: [
                      // Background image
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/photo_$index.jpeg'), // Replace with your image source
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Favorite icon container
                      Positioned(
                        top: 24,
                        right: 24,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // Texts at the bottom
                      const Positioned(
                        bottom: 48,
                        left: 32,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wildlife Photography',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                height: 26.4 / 22,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Landscape covered with snow...🌲',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 16.8 / 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
