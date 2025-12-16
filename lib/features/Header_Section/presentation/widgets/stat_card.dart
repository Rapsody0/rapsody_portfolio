import 'package:flutter/material.dart';

typedef StatCardHoverCallback = void Function(String key);

class StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String sub;
  final String statKey;
  final StatCardHoverCallback? onHover;
  final VoidCallback? onExit;
  final VoidCallback? onTap;

  const StatCard({
    super.key,
    required this.icon,
    required this.label,
    required this.sub,
    required this.statKey,
    this.onHover,
    this.onExit,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover?.call(statKey),
      onExit: (_) => onExit?.call(),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 180,
          width: 180,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Color(0xFF5F82FF), size: 32),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                sub,
                style: const TextStyle(color: Colors.white60, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
