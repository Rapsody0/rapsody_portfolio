import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rapsody_portfolio/core/widgets/tag.dart';

class FeaturedAppHighlight extends HookConsumerWidget {
  const FeaturedAppHighlight({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 600,
      height: 250,

      child: Card(
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1F3C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Featured App',
                  style: TextStyle(color: Color(0xFF5F82FF)),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Architect',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'La tua soluzione definitiva per la gestione dei progetti di costruzione, progettata per professionisti che cercano efficienza e precisione.',
                style: TextStyle(color: Colors.white60),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: 4),
                  Text('4.9', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 16),
                  Icon(
                    Icons.cloud_download,
                    color: Color(0xFF5F82FF),
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text('500K+', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 16),
                  Icon(Icons.people, color: Colors.green, size: 20),
                  SizedBox(width: 4),
                  Text('200K+', style: TextStyle(color: Colors.white)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tag(text: 'Cross-Platform'),
                  Tag(text: 'Real-time Sync'),
                  Tag(text: 'Offline Mode'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
