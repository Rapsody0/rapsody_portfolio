import 'package:flutter/material.dart';
import 'package:rapsody_portfolio/features/Featured_App_Section/presentation/widgets/app_section.dart';

class FeaturedAppsSection extends StatelessWidget {
  const FeaturedAppsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Featured Apps',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppCard(
              title: 'FitTracker Pro',
              description:
                  'A comprehensive fitness tracking app with real-time workout monitoring',
              tags: ['React Native', 'TypeScript', 'Redux'],
              rating: 4.8,
              downloads: '100K+',
              platforms: 'iOS & Android',
              isFeatured: true,
            ),
            const SizedBox(width: 24),
            AppCard(
              title: 'CryptoWatch',
              description:
                  'Real-time cryptocurrency tracking and portfolio management',
              tags: ['Flutter', 'Dart', 'Firebase'],
              rating: 4.7,
              downloads: '50K+',
              platforms: 'iOS & Android',
              isNew: true,
            ),
          ],
        ),
      ],
    );
  }
}