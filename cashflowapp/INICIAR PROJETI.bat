@echo off
cd /d %~dp0
echo Limpando projeto...
rmdir /s /q .dart_tool
rmdir /s /q build
flutter pub get
flutter run
pause
