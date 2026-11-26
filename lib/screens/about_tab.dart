import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_colors.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).padding.top + 24, 20, 30),
            decoration: const BoxDecoration(
              gradient: AppColors.gradient,
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(40)),
            ),
            child: const Column(
              children: [
                Icon(Icons.restaurant, size: 60, color: Colors.white),
                SizedBox(height: 8),
                Text('About DearFoodies',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _InfoCard(
                  icon: Icons.favorite,
                  title: 'Our Story',
                  text:
                      'DearFoodies started with a simple idea: serve food made with love. '
                      'From juicy burgers to traditional desi dishes, every meal is cooked fresh for you.',
                ),
                _InfoCard(
                  icon: Icons.flag,
                  title: 'Our Mission',
                  text:
                      'To bring happiness to your table with tasty, affordable and quality food, delivered quickly.',
                ),
                _InfoCard(
                  icon: Icons.access_time,
                  title: 'Opening Hours',
                  text: 'Monday - Sunday\n11:00 AM - 12:00 AM',
                ),
                _InfoCard(
                  icon: Icons.phone,
                  title: 'Contact Us',
                  text:
                      'Phone: +92 300 1234567\nEmail: hello@dearfoodies.com\nAddress: Main Street, Sialkot, Pakistan',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;
  const _InfoCard(
      {required this.icon, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.yellow.withValues(alpha: 0.3),
              child: Icon(icon, color: AppColors.orange),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(text, style: const TextStyle(height: 1.4)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}