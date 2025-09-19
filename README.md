## 📂 Project Structure


---

## 📖 Folder Descriptions

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

✅ With this, anyone reading your README will **understand both the folder tree and the purpose of each part**.  

Do you also want me to add a **1-week roadmap section** (day-by-day development tasks) into the same README snippet?
