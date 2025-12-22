import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rapsody_portfolio/features/Contact_Section/presentation/screens/contact_section.dart';
import 'package:rapsody_portfolio/features/Development_Process_Section/presentation/screens/development_process_section.dart';
import 'package:rapsody_portfolio/features/Expertise_Section/presentation/screens/expertise_section.dart';
import 'package:rapsody_portfolio/features/Featured_App_Section/presentation/screens/featured_app_section.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/screens/header_section_desktop.dart';
import 'package:rapsody_portfolio/features/Header_Section/presentation/screens/header_section_mobile.dart';
import 'package:rapsody_portfolio/core/logic/responsive_provider.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final showFab = useState(false);

    final headerKey = useRef(GlobalKey());
    final expertiseKey = useRef(GlobalKey());
    final featuredKey = useRef(GlobalKey());
    final processKey = useRef(GlobalKey());
    final contactKey = useRef(GlobalKey());

    final layout = ref.watch(appLayoutProvider);

    useEffect(() {
      void listener() {
        final shouldShow =
            scrollController.hasClients && scrollController.offset > 200;
        if (showFab.value != shouldShow) showFab.value = shouldShow;
      }

      scrollController.addListener(listener);
      // inizializza in base alla posizione attuale (utile se ripristinato)
      listener();
      return () => scrollController.removeListener(listener);
    }, [scrollController]);

    void scrollTo(GlobalKey key) {
      final ctx = key.currentContext;
      if (ctx != null) {
        Scrollable.ensureVisible(
          ctx,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
          alignment: 0,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/logo/rapsody.png',
          width: 180,
          height: 180,
        ),
        title: Text('Rapsody Dev.'),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {
              scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
            child: Text('Chi Sono'),
          ),
          TextButton(
            onPressed: () => scrollTo(expertiseKey.value),
            child: Text('Competenze'),
          ),
          TextButton(
            onPressed: () => scrollTo(featuredKey.value),
            child: Text('In Sviluppo'),
          ),
          TextButton(
            onPressed: () => scrollTo(processKey.value),
            child: Text('Processo di Sviluppo'),
          ),
          TextButton(
            onPressed: () => scrollTo(contactKey.value),
            child: Text('Contatti'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48, 8, 48, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              // Header responsive
              Container(
                key: headerKey.value,
                child: layout == LayoutType.desktop
                    ? const HeaderSectionDesktop()
                    : const HeaderSectionMobile(),
              ),
              const SizedBox(height: 40),
              // Technical Expertise
              Container(key: expertiseKey.value, child: ExpertiseSection()),
              const SizedBox(height: 40),
              // Featured Apps
              Container(key: featuredKey.value, child: FeaturedAppsSection()),
              const SizedBox(height: 40),
              // Development Process
              Container(
                key: processKey.value,
                child: DevelopmentProcessSection(),
              ),
              const SizedBox(height: 40),
              // Contact
              Container(key: contactKey.value, child: ContactSection()),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: showFab.value
          ? FloatingActionButton(
              onPressed: () {
                scrollController.animateTo(
                  0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              child: const Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}








// Technical Expertise Section



// Featured Apps Section




// Development Process Section




// Contact Section





