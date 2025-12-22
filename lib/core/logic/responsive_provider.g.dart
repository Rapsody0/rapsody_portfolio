// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsive_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppLayout)
const appLayoutProvider = AppLayoutProvider._();

final class AppLayoutProvider extends $NotifierProvider<AppLayout, LayoutType> {
  const AppLayoutProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLayoutProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLayoutHash();

  @$internal
  @override
  AppLayout create() => AppLayout();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LayoutType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LayoutType>(value),
    );
  }
}

String _$appLayoutHash() => r'c745a40ec5d66265f5af83960efd28db15a46ea8';

abstract class _$AppLayout extends $Notifier<LayoutType> {
  LayoutType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LayoutType, LayoutType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LayoutType, LayoutType>,
              LayoutType,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
