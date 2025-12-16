

import 'package:flutter/material.dart';
import 'package:rapsody_portfolio/features/Expertise_Section/presentation/widgets/skill_bar.dart';

class ExpertiseSection extends StatelessWidget {
  const ExpertiseSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Technical Expertise',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Specialized in modern mobile development technologies and frameworks',
          style: TextStyle(color: Colors.white60),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Core Technologies
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Core Technologies',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SkillBar(
                    label: 'React Native',
                    value: 0.95,
                    tag: 'Cross-Platform',
                  ),
                  SkillBar(
                    label: 'Swift',
                    value: 0.9,
                    tag: 'iOS',
                    tagColor: Colors.orange,
                  ),
                  SkillBar(
                    label: 'Kotlin',
                    value: 0.8,
                    tag: 'Android',
                    tagColor: Colors.green,
                  ),
                  SkillBar(
                    label: 'Flutter',
                    value: 0.92,
                    tag: 'Multi-Platform',
                    tagColor: Colors.purple,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 32),
            // Specialized Skills
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Specialized Skills',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SkillBar(label: 'Firebase', value: 0.88, showTag: false),
                  SkillBar(
                    label: 'App Store Optimization',
                    value: 0.85,
                    showTag: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}