## 📂 Project Structure

---

- **main.dart** → App entry point, initializes Providers, sets up routes & theme.
- **core/** → Contains global utilities.
  - `constants/` → App-wide constants (colors, strings, API endpoints).
  - `theme/` → Centralized theme configuration (light/dark modes).
  - `utils/` → Helper functions (date formatting, notification scheduling, etc.).
- **data/** → Handles data logic.
  - `models/` → Data structures (`TaskModel`, `QuoteModel`).
  - `services/` → External services like Dio API calls & local DB (Hive/SQLite).
  - `repositories/` → Abstraction layer between services & providers.
- **providers/** → State management layer using Provider/ChangeNotifier.
  - `task_provider.dart` → Manages tasks (CRUD, completion, persistence).
  - `quote_provider.dart` → Manages motivational quote fetching.
- **ui/** → Presentation layer (all the visuals).
  - `screens/` → Different pages of the app (Home, Add Task, Task Details, Settings).
  - `widgets/` → Reusable UI components (Task tile, buttons, etc.).
  - `dialogs/` → Popups for quick add/edit actions.
- **routes/** → Centralized route management (`app_routes.dart`).

---
