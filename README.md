# Bayanatz Task - Location Management App

A Flutter application for managing locations with geofencing capabilities, breaks, and pause settings.

## Features

- ✨ Create and manage location entries
- 📍 Latitude and longitude coordinate input with validation
- 🗺️ Google Maps integration
- 🔐 Geofence, breaks, and pause settings
- 📱 Responsive UI with ScreenUtil
- 🎨 Clean architecture with BLoC state management
- 🌐 Postal code validation for multiple countries

## Tech Stack

- **Flutter SDK**: Latest stable version
- **State Management**: flutter_bloc
- **UI**: 
  - flutter_screenutil for responsive design
  - Custom themes and text styles
- **Architecture**: Clean Architecture with BLoC pattern
- **Development Tools**: device_preview for responsive testing

## Project Structure

```
lib/
├── core/
│   ├── constants/       # App colors, fonts, text styles, validations
│   ├── extensions/      # Coordinate formatting extensions
│   ├── functions/       # Utility functions (spacing, etc.)
│   ├── helpers/         # BLoC observer, helpers
│   ├── routing/         # App routing configuration
│   └── widgets/         # Reusable widgets
├── features/
│   └── create_location/
│       ├── data/        # Repository implementation
│       ├── domain/      # Location model
│       └── presentation/
│           ├── cubit/   # BLoC state management
│           └── widgets/ # Feature-specific widgets
└── main.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK (3.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/ahmeddsanad/bayanatz_task.git
cd bayanatz_task
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### For Development with Device Preview

Enable device preview in `main.dart`:
```dart
DevicePreview(
  enabled: true, // Set to true
  builder: (context) => LocationApp(appRouter: AppRouter()),
)
```

## Validation Features

- **Location Name**: 3-20 characters
- **Latitude**: -90 to 90 degrees
- **Longitude**: -180 to 180 degrees
- **Postal Code**: Supports US, UK, and Canadian formats
- **Country, State, City**: Required fields with character validation

## Screenshots

[Add your app screenshots here]

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

Project Link: [https://github.com/ahmeddsanad/bayanatz_task](https://github.com/ahmeddsanad/bayanatz_task)

## Acknowledgments

- Flutter Team for the amazing framework
- BLoC library for state management
- Community contributors
