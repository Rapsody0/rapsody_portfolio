

import 'package:flutter/material.dart';
import 'package:rapsody_portfolio/core/widgets/tag.dart';

class AppCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tags;
  final double rating;
  final String downloads;
  final String platforms;
  final bool isFeatured;
  final bool isNew;

  const AppCard({super.key, 
    required this.title,
    required this.description,
    required this.tags,
    required this.rating,
    required this.downloads,
    required this.platforms,
    this.isFeatured = false,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.rocket_launch, color: Color(0xFF5F82FF), size: 32),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (isFeatured)
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1F3C),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Featured',
                    style: TextStyle(color: Color(0xFF5F82FF), fontSize: 12),
                  ),
                ),
              if (isNew)
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF1A1F3C),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'New',
                    style: TextStyle(color: Color(0xFFB16CEA), fontSize: 12),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Text(description, style: const TextStyle(color: Colors.white60)),
          const SizedBox(height: 12),
          Wrap(spacing: 8, children: tags.map((t) => Tag(text: t)).toList()),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 18),
              const SizedBox(width: 4),
              Text(
                rating.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 16),
              Icon(Icons.cloud_download, color: Color(0xFF5F82FF), size: 18),
              const SizedBox(width: 4),
              Text(downloads, style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 16),
              Text(platforms, style: const TextStyle(color: Colors.white60)),
            ],
          ),
        ],
      ),
    );
  }
}