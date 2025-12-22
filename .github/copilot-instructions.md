# Copilot Instructions for rapsody_portfolio

## Quick Summary
This is a Flutter portfolio (single-page-like) app built feature-first and driven by Riverpod. UI is composed from small widgets under `lib/features/`; shared logic and styles live in `lib/core/`. Prefer composition over monolith widgets and keep state inside Riverpod providers.

## Big picture / Why it is structured this way
- Feature-first: each visible section (header, expertise, featured apps, contact) is its own feature folder under `lib/features/` so sections are isolated and easily re-ordered or replaced.
- Core library: `lib/core/` contains shared widgets, theme, and simple data models used across features.
- Riverpod: chosen for predictable, testable state and easy DI across web/desktop/mobile builds.

## Concrete developer workflows (commands you will use)
- Install deps: `flutter pub get`
- Run locally (mobile): `flutter run` or select device in IDE.
- Run web: `flutter run -d chrome` or `flutter build web` for production output.
- Code generation (Riverpod, JSON, etc.):
  - One-off/CI: `dart run build_runner build --delete-conflicting-outputs`
  - Watch mode: `dart run build_runner watch --delete-conflicting-outputs`
  Generated outputs appear under `lib/` next to sources and build artifacts under `build/`.
- Tests: `flutter test`

## Codegen & generated-file notes
- The project uses code generation (Riverpod generator). When editing provider files (e.g., `lib/core/logic/responsive_provider.dart`) run the build_runner command above.
- Keep generated files in VCS only if project does so; usually `build/` and `.dart_tool/` are ignored. Check `.gitignore` before committing generated artifacts.

## Project-specific conventions and patterns (do this here)
- Feature folder layout: `lib/features/<feature>/presentation/screens/` and `.../widgets/` — put screen scaffolding in screens and small composables in widgets.
- Shared widgets: put in `lib/core/widgets/` and avoid duplicating UI logic across features.
- Theme: central theme lives in `lib/core/style/dark_theme.dart`. Update `AppColors` or `TextStyles` there and prefer theme references from widgets.
- State: use Riverpod providers (hooks allowed). Avoid `setState` in feature widgets for cross-screen state. When writing provider functions, prefer the `Ref ref` parameter signature and use `@Riverpod(keepAlive: true)` when needed (see existing providers for examples).

## Integration points / external deps
- `pubspec.yaml` includes `google_fonts`, `go_router`, and optional `cloud_firestore` (not required for local dev). Check `pubspec.yaml` for exact versions.
- Assets are under `assets/` and must be declared in `pubspec.yaml` when added.

## Examples & small recipes
- Add new section: create `lib/features/<name>/presentation/screens/` + `widgets/`, then import and add to `HomeScreen` (`lib/features/home_screen.dart`).
- Update theme color: edit `lib/core/style/dark_theme.dart` -> `AppColors`, then run a rebuild.
- Fix provider generation mismatch: run `dart run build_runner build --delete-conflicting-outputs` and inspect errors; often changing provider signature requires re-running.

## Key files to inspect first
- `lib/main.dart` — app entry and ProviderScope
- `lib/features/home_screen.dart` — composition of main sections
- `lib/core/style/dark_theme.dart` — color & typography source of truth
- `lib/core/logic/` — simple data models and providers (see `responsive_provider` generated file)

## Tips for AI agents working on this repo
- Preserve existing style and file organization; make minimal, focused edits.
- When adding state, prefer Riverpod providers and follow existing naming/patterns.
- Use the `build_runner` command after changing provider or generated model files.
- Prefer small PRs that change one feature or provider at a time.

If any section is unclear or you want more examples (provider patterns, common refactors, or CI commands), tell me which area to expand.
