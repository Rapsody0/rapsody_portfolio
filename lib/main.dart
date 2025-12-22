import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rapsody_portfolio/features/home_screen.dart';
import 'core/style/theme.dart';
import 'core/logic/responsive_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mq = MediaQuery.of(context);
    final platform = Theme.of(context).platform;

    // Aggiorna il provider responsive ogni volta che cambia il layout
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(appLayoutProvider.notifier)
          .update(width: mq.size.width, platform: platform);
    });

    return MaterialApp(
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
