

import 'package:flutter/material.dart';

class SkillBar extends StatelessWidget {
  final String label;
  final double value;
  final String? tag;
  final Color? tagColor;
  final bool showTag;
  const SkillBar({super.key, 
    required this.label,
    required this.value,
    this.tag,
    this.tagColor,
    this.showTag = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              if (showTag && tag != null) ...[
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: tagColor ?? Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    tag!,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 6),
          LinearProgressIndicator(
            value: value,
            minHeight: 8,
            backgroundColor: Colors.white12,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFB16CEA)),
          ),
        ],
      ),
    );
  }
}
