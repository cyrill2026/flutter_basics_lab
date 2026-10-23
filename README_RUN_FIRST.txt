1. Extract the ZIP and open the extracted folder in VS Code (the folder with pubspec.yaml).
2. Install Flutter SDK and Flutter/Dart VS Code extensions if needed.
3. Run these terminal commands in order:
   flutter create --platforms=web,windows,android .
   flutter pub get
   flutter analyze
   flutter run -d chrome
4. If red underlines remain: Ctrl+Shift+P -> Dart: Restart Analysis Server.
5. Change lib/main.dart import to switch between activity files.
Note: This environment does not have Flutter installed, so the analyzer cannot be run here.
Screenshots, observed debug output and GitHub URL must be obtained from your running app.
