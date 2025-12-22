import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'responsive_provider.g.dart';

enum LayoutType { mobile, desktop }

@Riverpod(keepAlive: true)
class AppLayout extends _$AppLayout {
  @override
  LayoutType build() {
    // valore di fallback; la UI dovrebbe chiamare .notifier.update(...) al primo build
    return LayoutType.desktop;
  }

  void update({required double width, required TargetPlatform platform}) {
    final isNativeMobile = platform == TargetPlatform.iOS || platform == TargetPlatform.android;
    final isSmallScreen = width < 600;
    final computed = (isNativeMobile || isSmallScreen) ? LayoutType.mobile : LayoutType.desktop;

    // Aggiorna solo se cambia il layout
    if (computed != state) {
      state = computed;
    }
  }
}
