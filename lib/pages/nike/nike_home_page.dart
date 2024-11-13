import 'package:flutter/material.dart';
import 'package:world_travel/pages/nike/custom_appbar.dart';
import 'package:world_travel/pages/nike/custom_bottom_navigation_bar.dart';
// import 'package:go_router/go_router.dart';

class NikeHomePage extends StatelessWidget {
  const NikeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: MyHome(),
      bottomNavigationBar: CustomBottomNavigationBar(),
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
            height: 43,
          ),
          SearchBox(),
          SizedBox(
            height: 19.94,
          ),
          ProductList(),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383.82,
      height: 50,
      margin: const EdgeInsets.fromLTRB(22, 0, 22.18, 0),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(6),
        // border: Border.all(color: Colors.grey.shade300),
      ),
      child: const Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "name": "Air Force 1",
        "amount": "\$249",
        "image": "assets/images/air_force_1.png",
      },
      {
        "name": "Air Max 1",
        "amount": "\$249",
        "image": "assets/images/air_max_1.png",
      },
      {
        "name": "Air Jordan 1",
        "amount": "\$249",
        "image": "assets/images/air_jordan_1.png",
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 24, top: 0, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Newly Arrived",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 17.59), // Gap between heading and cards
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 17.59,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => ProductDetailsDialog(
                      name: product["name"]!,
                      price: product["amount"]!,
                      image: product["image"]!,
                    ),
                  );
                },
                child: Container(
                  width: 381,
                  height: 245.16,
                  // padding:
                  // const EdgeInsets.fromLTRB(22.76, 22.76, 21.73, 21.94),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product["image"]!),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15.92),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 21.73,
                        left: 22.76,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product["name"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              product["amount"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 21.73,
                        right: 21.94,
                        child: GestureDetector(
                          onTap: () {
                            // Handle add action
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProductDetailsDialog extends StatefulWidget {
  final String name;
  final String price;
  final String image;

  const ProductDetailsDialog({
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  _ProductDetailsDialogState createState() => _ProductDetailsDialogState();
}

class _ProductDetailsDialogState extends State<ProductDetailsDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  int selectedSize = -1; // No size selected initially

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final dialogWidth = screenWidth * 0.9; // 90% of screen width

    return ScaleTransition(
      scale: _scaleAnimation,
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Half: Image
              Container(
                width: dialogWidth,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
                // transform:
                //     Matrix4.rotationZ(16.39 * 3.1415927 / 180), // 16.39 deg
              ),
              // Bottom Half: Details
              Container(
                width: dialogWidth,
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    // Row with product name, price, and favorite icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.price,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 55,
                          height: 52,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            border: Border.all(color: Color(0xFF737373)),
                          ),
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Description Text
                    const Text(
                      "This product is one of the best in our collection, known for its excellent quality and style. You will love every detail of it.",
                      style: TextStyle(fontSize: 16),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 24),

                    // Container with Color Selection
                    Column(
                      children: [
                        const Text(
                          "Choose Colour",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildColorOption(Color(0xFFB3E140)),
                            _buildColorOption(Color(0xFF406DE1)),
                            _buildColorOption(Color(0xFFFF0404)),
                            _buildColorOption(Color(0xFFFFE604)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // "Select Size" Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Select Size",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(5, (index) {
                            int size = 6 + index;
                            return _buildSizeOption(size, index);
                          }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const BuyNowButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return GestureDetector(
      onTap: () {
        // Handle color selection
      },
      child: Container(
        width: 76.07,
        height: 36.97,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(9.24),
        ),
      ),
    );
  }

  Widget _buildSizeOption(int size, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = index;
        });
      },
      child: Container(
        width: 57.99,
        height: 57.99,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: selectedSize == size ? Color(0xFFCECECE) : Colors.black,
            width: 0.79,
          ),
        ),
        child: Text(
          size.toString(),
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 384,
      height: 61,
      child: ElevatedButton.icon(
        onPressed: () {
          // Define your onPressed functionality here
        },
        label: const Text(
          'Buy Now',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        icon: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 101, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
