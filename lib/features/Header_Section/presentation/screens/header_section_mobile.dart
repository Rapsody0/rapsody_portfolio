import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rapsody_portfolio/core/utils/itsrings.dart';
import 'package:rapsody_portfolio/features/Header_Section/data/skill_card_map.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/widgets/featuredAppHighlight.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/widgets/skill_card.dart';

class HeaderSectionMobile extends HookWidget {
  const HeaderSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final isLandscape = media.orientation == Orientation.landscape;
    final width = media.size.width;

    // Font size responsive
    final titleFontSize = width < 400 ? 28.0 : 32.0;
    final middleFontSize = width < 400 ? 16.0 : 18.0;

    // SkillCard list
    final skillCards = [
      SkillCard(
        title: 'Flutter',
        description: statCardDescriptions[SkillCardKeys.flutter]!,
        icon: Icons.flutter_dash,
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
    ];

    // Grid columns: 2 in portrait, 4 in landscape
    final crossAxisCount = isLandscape ? 4 : 2;
    final childAspectRatio = isLandscape ? 1.6 : 1.2;
    final verticalPadding = isLandscape ? 8.0 : 24.0;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: verticalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            HeaderStrings.headerTopString,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
            textAlign: TextAlign.center,
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
              style: TextStyle(
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            HeaderStrings.headerMiddleString,
            style: TextStyle(
              fontSize: middleFontSize,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            HeaderStrings.headerBottomString,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white60, fontSize: 13),
          ),
          const SizedBox(height: 24),
          // SkillCard grid responsive
          GridView.count(
            crossAxisCount: crossAxisCount,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: childAspectRatio,
            children: skillCards,
          ),
          const SizedBox(height: 24),
          // Featured App
          const FeaturedAppHighlight(),
        ],
      ),
    );
  }
}