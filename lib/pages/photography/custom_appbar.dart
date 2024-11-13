import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leadingWidth: 221, // Width of the container + padding
      leading: Padding(
        padding:
            const EdgeInsets.only(left: 24, top: 10), // Reduced top padding
        child: SizedBox(
          width: 197,
          child: Row(
            children: [
              // Profile image
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/photography_profile_image.png'), // Update image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              // Text column
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Samantha James",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Photographer",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        // Notification icon on the right
        Padding(
          padding: const EdgeInsets.only(
              top: 10, right: 24), // Adjust padding as needed
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(30, 158, 158, 158),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notification_add_outlined,
                size: 20,
                color: Colors.black,
              ),
              onPressed: () {
                // Add notification action here
              },
            ),
          ),
        ),
      ],
    );
  }
}
