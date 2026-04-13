import 'package:flutter/material.dart';
import 'category_card.dart';
import 'custombottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    "Strada Restaurant",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      const Icon(
                        Icons.notifications_none,
                        size: 26,
                        color: Colors.black,
                      ),

                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Dishes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),

                  Text(
                    "View More",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 230, 118, 118),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/sushi.jpeg',
                                height: 220,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: -18,
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.1),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 28),

                    const Text(
                      "Sushi Platter",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color.fromARGB(255, 165, 155, 62),
                        ),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color.fromARGB(255, 165, 155, 62),
                        ),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color.fromARGB(255, 165, 155, 62),
                        ),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color.fromARGB(255, 165, 155, 62),
                        ),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Color.fromARGB(255, 165, 155, 62),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "5.0 (100 reviews)",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  Text(
                    "Food Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ],
              ),

              const SizedBox(height: 14),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CategoryCard(
                      icon: Icons.local_bar_outlined,
                      title: 'Drinks',
                      itemCount: '5 Items',
                    ),
                    SizedBox(width: 12),
                    CategoryCard(
                      icon: Icons.nature,
                      title: 'Vegan',
                      itemCount: '8 Items',
                    ),
                    SizedBox(width: 12),
                    CategoryCard(
                      icon: Icons.restaurant,
                      title: 'Food',
                      itemCount: '20 Items',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
