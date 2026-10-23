# Run in VS Code PowerShell, inside the extracted project folder
flutter create --platforms=web,windows,android .
flutter pub get
flutter analyze
flutter run -d chrome
