import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rapsody_portfolio/core/utils/itsrings.dart';
import 'package:rapsody_portfolio/features/Header_Section/data/skill_card_map.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/widgets/featured_app_highlight.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/widgets/skill_card.dart';

class HeaderSectionDesktop extends HookWidget{
  const HeaderSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          HeaderStrings.headerTopString,
          style: TextStyle(color: Colors.white70, fontSize: 18),
        ),
        const SizedBox(height: 8),
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [Color(0xFFB16CEA), Color(0xFF5F82FF)],
            ).createShader(bounds);
          },
          child: Text(
            HeaderStrings.headerNameString,
            style: const TextStyle(
              fontSize: 56,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          HeaderStrings.headerMiddleString,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          HeaderStrings.headerBottomString,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white60, fontSize: 16),
        ),
        const SizedBox(height: 32),
        // Stats
        // Importa la mappa e le chiavi
        // Mappa le SkillCard usando i dati
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillCard(
              title: 'Flutter',
              description: statCardDescriptions[SkillCardKeys.flutter]!,
              icon: Icons.code,
            ),
            SkillCard(
              title: 'Riverpod',
              description: statCardDescriptions[SkillCardKeys.riverpod]!,
              icon: Icons.bolt,
            ),
            SkillCard(
              title: 'AI',
              description: statCardDescriptions[SkillCardKeys.ai]!,
              icon: Icons.smart_toy,
            ),
            SkillCard(
              title: 'UI/UX',
              description: statCardDescriptions[SkillCardKeys.uiux]!,
              icon: Icons.design_services,
            ),
          ],
        ),
        const SizedBox(height: 32),
        // Featured App
        FeaturedAppHighlight(),
      ],
    );
  }
}