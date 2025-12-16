import 'package:flutter/material.dart';
import 'package:rapsody_portfolio/features/Contact_Section/presentation/widgets/contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Let's Create Amazing Mobile Experiences",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Ready to bring your mobile app idea to life? I specialize in creating polished, user-friendly\nmobile applications that deliver exceptional experiences.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white60),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.location_on, color: Colors.white60, size: 18),
            SizedBox(width: 4),
            Text(
              'Cavaglietto, NO, ITALY',
              style: TextStyle(color: Colors.white60),
            ),
          ],
        ),
        const SizedBox(height: 32),
        // Contact Form
        ContactForm(),
        const SizedBox(height: 24),
        // Resume Button
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.description, color: Colors.white),
          label: const Text('View Resume'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white10,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
        const SizedBox(height: 24),
        // Social Icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.code, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.linked_camera, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
