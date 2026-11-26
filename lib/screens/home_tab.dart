import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';
import 'package:flutter_application_1/data/food_data.dart';
import 'package:flutter_application_1/data/user_data.dart';
import 'package:flutter_application_1/widgets/food_card.dart';

class HomeTab extends StatelessWidget {
  final VoidCallback onSeeAll;
  const HomeTab({super.key, required this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    final firstName =
        UserData.name.isEmpty ? 'Foodie' : UserData.name.split(' ').first;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------- Header ----------
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).padding.top + 24, 20, 30),
            decoration: const BoxDecoration(
              gradient: AppColors.gradient,
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(40)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, $firstName!',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'What would you like to eat today?',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),

          // ---------- Offer banner ----------
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.yellow, width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SPECIAL OFFER',
                          style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.5,
                              color: Colors.grey)),
                      SizedBox(height: 4),
                      Text('20% OFF',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColors.orange)),
                      Text('On all pizzas this weekend',
                          style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
                Icon(Icons.local_pizza, size: 70, color: AppColors.yellow),
              ],
            ),
          ),

          // ---------- Popular dishes ----------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text('Popular Dishes',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Spacer(),
                TextButton(
                  onPressed: onSeeAll,
                  child: const Text('See all',
                      style: TextStyle(color: AppColors.orange)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: 6,
              itemBuilder: (context, index) => SizedBox(
                width: 170,
                child: FoodCard(food: foodList[index]),
              ),
            ),
          ),

          // ---------- Why choose us ----------
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
            child: Text('Why DearFoodies?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                    child: _FeatureCard(
                        icon: Icons.delivery_dining, label: 'Fast Delivery')),
                Expanded(
                    child: _FeatureCard(
                        icon: Icons.eco, label: 'Fresh Ingredients')),
                Expanded(
                    child: _FeatureCard(
                        icon: Icons.savings, label: 'Best Prices')),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String label;
  const _FeatureCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 6),
        child: Column(
          children: [
            Icon(icon, size: 36, color: AppColors.orange),
            const SizedBox(height: 8),
            Text(label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}