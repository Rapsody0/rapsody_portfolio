import 'package:flutter/material.dart';
import 'package:rapsody_portfolio/features/Contact_Section/presentation/screens/contact_section.dart';
import 'package:rapsody_portfolio/features/Development_Process_Section/presentation/screens/development_process_section.dart';
import 'package:rapsody_portfolio/features/Expertise_Section/presentation/screens/expertise_section.dart';
import 'package:rapsody_portfolio/features/Featured_App_Section/presentation/screens/featured_app_section.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/screens/header_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/logo/rapsody.png',
          width: 180,
          height: 180,
        ),
        title: Text('Rapsody Dev.'),
        backgroundColor: Colors.transparent,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48, 8, 48, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // Header
              HeaderSection(),
              const SizedBox(height: 40),
              // Technical Expertise
              ExpertiseSection(),
              const SizedBox(height: 40),
              // Featured Apps
              FeaturedAppsSection(),
              const SizedBox(height: 40),
              // Development Process
              DevelopmentProcessSection(),
              const SizedBox(height: 40),
              // Contact
              ContactSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}








// Technical Expertise Section



// Featured Apps Section




// Development Process Section




// Contact Section





