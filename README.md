# resturant_app

## Description
resturant_app is a Flutter-first restaurant interface prototype. It focuses on clean widget composition, reusable UI parts, and cross-platform delivery from one codebase.

The app shell and theme are defined in [lib/main.dart](lib/main.dart). The main screen layout lives in [lib/home_page.dart](lib/home_page.dart), while reusable widgets are separated into [lib/category_card.dart](lib/category_card.dart) and [lib/custombottom_navbar.dart](lib/custombottom_navbar.dart). Static image assets are stored in [assets/images](assets/images) and registered in [pubspec.yaml](pubspec.yaml). Web bootstrap and install metadata are configured in [web/index.html](web/index.html) and [web/manifest.json](web/manifest.json).

## Interesting Techniques In This Codebase
- Modular UI composition with focused stateless widgets in [lib](lib), keeping presentation concerns local and testable.
- Layered interface details (floating button and badge overlays) built with Flutter Stack/Positioned patterns in [lib/home_page.dart](lib/home_page.dart), conceptually similar to CSS [position](https://developer.mozilla.org/en-US/docs/Web/CSS/position) and [z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index).
- Viewport-safe layout handling through Flutter SafeArea in [lib/home_page.dart](lib/home_page.dart), aligned with modern device inset handling like CSS [env()](https://developer.mozilla.org/en-US/docs/Web/CSS/env).
- Horizontal category browsing implemented with SingleChildScrollView in [lib/home_page.dart](lib/home_page.dart), comparable to CSS [overflow-x](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow-x).
- Visual depth and card emphasis through BoxDecoration and shadows in [lib/category_card.dart](lib/category_card.dart), similar to CSS [box-shadow](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow).
- Rounded media clipping and controlled image fit for predictable visuals in [lib/home_page.dart](lib/home_page.dart), close to CSS [border-radius](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius) and [object-fit](https://developer.mozilla.org/en-US/docs/Web/CSS/object-fit).
- Web base path support via the HTML [base](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base) element in [web/index.html](web/index.html).
- PWA metadata and icon strategy in [web/manifest.json](web/manifest.json), following the [Web App Manifest](https://developer.mozilla.org/en-US/docs/Web/Manifest) model.

## Non-Obvious Technologies And Libraries
- [Flutter](https://flutter.dev): Multi-platform UI toolkit and rendering runtime used by this project.
- [Dart](https://dart.dev): Language and runtime configured with SDK constraints in [pubspec.yaml](pubspec.yaml).
- [flutter_lints](https://pub.dev/packages/flutter_lints): Lint preset integrated through [analysis_options.yaml](analysis_options.yaml) for consistent static analysis.
- [Material Icons](https://fonts.google.com/icons): Icon system used through Flutter Material widgets and enabled in [pubspec.yaml](pubspec.yaml).
- [Roboto](https://fonts.google.com/specimen/Roboto): App font family configured in [lib/main.dart](lib/main.dart).
- Flutter web bootstrap flow with flutter_bootstrap.js referenced in [web/index.html](web/index.html).

## Project Structure
```text
.
├── README.md
├── analysis_options.yaml
├── pubspec.yaml
├── resturant_app.iml
├── android/
│   ├── app/
│   └── gradle/
├── assets/
│   └── images/
├── build/
├── ios/
│   ├── Flutter/
│   ├── Runner/
│   ├── Runner.xcodeproj/
│   ├── Runner.xcworkspace/
│   └── RunnerTests/
├── lib/
├── linux/
│   ├── flutter/
│   └── runner/
├── macos/
│   ├── Flutter/
│   ├── Runner/
│   ├── Runner.xcodeproj/
│   ├── Runner.xcworkspace/
│   └── RunnerTests/
├── web/
│   └── icons/
└── windows/
	├── flutter/
	└── runner/
```

- [lib](lib): Main Dart UI code and reusable widget components.
- [assets/images](assets/images): Image assets loaded at runtime by the app UI.
- [web](web): Web entry shell, PWA metadata, and install icons.
- [android](android), [ios](ios), [macos](macos), [linux](linux), [windows](windows): Platform-specific runners and build integration.
- [build](build): Generated build artifacts.
