# Copilot Instructions for rapsody_portfolio

## Overview
This is a Flutter portfolio project structured for modularity and clarity. The app is organized by feature sections, each in its own directory under `lib/features/`, and uses Riverpod for state management. The design emphasizes separation of concerns and maintainability.

## Architecture & Patterns
- **Feature-first structure:** Each major UI section (Header, Expertise, Featured Apps, Development Process, Contact) is a subfolder in `lib/features/`, with further separation into `presentation/widgets` and `presentation/screens`.
- **Core utilities:** Shared logic, styles, and widgets are in `lib/core/` (see `logic/`, `style/`, `utils/`, `widgets/`).
- **State management:** Uses `hooks_riverpod` and `flutter_riverpod` for dependency injection and state. Avoid global state outside Riverpod providers.
- **Theming:** Centralized in `lib/core/style/dark_theme.dart` using custom color schemes and Google Fonts.
- **Data models:** Simple data classes (e.g., `SkillData`, `ImageCardData`) are in `lib/core/logic/`.

## Developer Workflows
- **Build:** Standard Flutter build commands (`flutter run`, `flutter build <platform>`). No custom scripts required.
- **Testing:** Use `flutter test`. No custom test runner or folder structure.
- **Assets:** All images and logos are in `assets/` and referenced in `pubspec.yaml`. Add new assets there and update the YAML.
- **Dependencies:** Managed via `pubspec.yaml`. Run `flutter pub get` after changes.

## Project-Specific Conventions
- **Widget composition:** Prefer small, stateless widgets. Place reusable widgets in `core/widgets/`.
- **Section navigation:** All main sections are composed in `HomeScreen` (`lib/features/home_screen.dart`).
- **No platform-specific code:** All logic is in Dart/Flutter; no custom native code.
- **No REST API:** The project is static except for optional integrations (e.g., `cloud_firestore` is present but not required for local dev).

## Integration Points
- **Riverpod:** All stateful logic should use Riverpod providers. Avoid `setState` in favor of hooks/providers.
- **Google Fonts:** Typography is managed via the `google_fonts` package in the theme.
- **GoRouter:** If navigation is needed, use `go_router` (see `pubspec.yaml`).

## Examples
- To add a new section: create a folder in `lib/features/`, add `presentation/screens/` and `presentation/widgets/`, then compose in `HomeScreen`.
- To add a new theme color: update `AppColors` in `core/style/dark_theme.dart` and reference in widgets.

## Key Files
- `lib/main.dart`: App entry, theme, and root provider setup.
- `lib/features/home_screen.dart`: Main UI composition.
- `lib/core/style/dark_theme.dart`: Theme and color definitions.
- `pubspec.yaml`: Dependencies and assets.

---
For questions about project structure or patterns, review the `lib/features/` and `lib/core/` directories for examples.
