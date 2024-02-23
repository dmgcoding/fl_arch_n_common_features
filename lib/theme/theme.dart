import 'package:flcp_s2/theme/colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static AppTheme of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    if (brightness == Brightness.dark) {
      return DarkModeTheme();
    }
    return LightModeTheme();
  }

  late Color primaryBg;
  late Color textColor;
  late Color primaryColor;
}

final class LightModeTheme extends AppTheme {
  @override
  Color get primaryBg => Colors.white;
  @override
  Color get textColor => Colors.black;
  @override
  Color get primaryColor => Colors.blue;
}

final class DarkModeTheme extends AppTheme {
  @override
  Color get primaryBg => AppColors.black;
  @override
  Color get textColor => Colors.white;
  @override
  Color get primaryColor => Colors.blue;
}
