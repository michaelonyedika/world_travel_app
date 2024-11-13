import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:world_travel/config/router/approute.dart';

class WorldTravelCarousalPage extends StatefulWidget {
  const WorldTravelCarousalPage({super.key});

  @override
  State<WorldTravelCarousalPage> createState() =>
      _WorldTravelCarousalPageState();
}

class _WorldTravelCarousalPageState extends State<WorldTravelCarousalPage> {
  int _currentIndex = 0;

  final List<Map<String, String>> _carouselItems = [
    {
      "image": "assets/images/slider_1.png",
      "text": "Discover the world with us"
    },
    {
      "image": "assets/images/slider_2.png",
      "text": "To the most famous places of the world"
    },
    {
      "image": "assets/images/slider_3.png",
      "text": "With cheap and affordable prices"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: _carouselItems.map(
              (item) {
                return Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        item["image"]!,
                        fit: BoxFit.contain,
                        width: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 57),
                    Text(
                      item["text"]!,
                      style: const TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                      textAlign: TextAlign.left,
                    )
                  ],
                );
              },
            ).toList(),
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.from(
                _carouselItems.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => setState(() => _currentIndex = entry.key),
                    child: Container(
                      width: _currentIndex == entry.key ? 28 : 15,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: _currentIndex == entry.key
                            ? const Color(0xFFFF4B4B)
                            : const Color(0xFF000000),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          const SizedBox(
            height: 71,
          ),
          Container(
              margin: const EdgeInsets.only(right: 46),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  context.go(AppRoute.worldTravelNextPage);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/nextIcon.png",
                    width: 79,
                    height: 46,
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
