import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Toggle theme mode
  void toggleTheme() {
    _isDarkMode = !_isDarkMode; // Flip the current state
    notifyListeners(); // Notify all listeners of the change
  }

  // Get current theme mode
  ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;
}
