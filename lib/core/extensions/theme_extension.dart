import 'package:flutter/material.dart';
import 'package:showan_coffee/core/core.dart';

/// Extension theme
extension ThemeExtension on BuildContext {
  /// Current [ThemeData] in your widget
  ThemeData get theme => Theme.of(this);

  /// Get Adaptive Theme with current style
  AdaptiveTheme get adaptiveTheme => AdaptiveTheme(themeData: theme);
}
