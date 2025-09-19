# Todo-Reminder-App
Personal To-Do &amp; Reminder Mobile App<br>
lib/
│
├── main.dart                // App entry point
│
├── core/                    // Core utilities (constants, helpers, theme)
│   ├── constants/
│   │   ├── app_colors.dart
│   │   ├── app_strings.dart
│   │   └── api_endpoints.dart
│   ├── theme/
│   │   └── app_theme.dart
│   └── utils/
│       ├── date_time_helper.dart
│       └── notification_helper.dart
│
├── data/                    // Data layer (API + Local DB)
│   ├── models/
│   │   ├── task_model.dart
│   │   └── quote_model.dart
│   ├── services/
│   │   ├── api_service.dart       // Uses Dio for API calls
│   │   ├── quote_api.dart         // Fetch motivational quote
│   │   └── local_db_service.dart  // (Hive/SQLite)
│   └── repositories/
│       ├── task_repository.dart
│       └── quote_repository.dart
│
├── providers/               // State management (Provider/ChangeNotifier)
│   ├── task_provider.dart
│   └── quote_provider.dart
│
├── ui/                      // Presentation layer
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── add_task_screen.dart
│   │   ├── task_detail_screen.dart
│   │   └── settings_screen.dart
│   ├── widgets/
│   │   ├── task_tile.dart
│   │   └── custom_button.dart
│   └── dialogs/
│       └── add_task_dialog.dart
│
└── routes/
    └── app_routes.dart       // Centralized route management

