

import 'package:flutter/material.dart';
import 'package:rapsody_portfolio/features/Development_Process_Section/presentation/widgets/process_card.dart';

class DevelopmentProcessSection extends StatelessWidget {
  const DevelopmentProcessSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Development Process',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'A systematic approach to building exceptional mobile applications',
          style: TextStyle(color: Colors.white60),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProcessCard(
              icon: Icons.lightbulb_outline,
              title: 'Ideation & Planning',
              steps: [
                'Requirements gathering and market research',
                'User flow and wireframe design',
                'Interactive prototype development',
              ],
            ),
            const SizedBox(width: 24),
            ProcessCard(
              icon: Icons.code,
              title: 'Development',
              steps: [
                'Architecture setup and tech stack selection',
                'Agile development with regular sprints',
                'Continuous testing and code reviews',
              ],
            ),
            const SizedBox(width: 24),
            ProcessCard(
              icon: Icons.check_circle_outline,
              title: 'Launch & Growth',
              steps: [
                'App store optimization and submission',
                'Analytics integration and monitoring',
                'Regular updates and feature enhancements',
              ],
            ),
          ],
        ),
      ],
    );
  }
}