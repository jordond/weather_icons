import 'package:flutter/widgets.dart';

 class WIData {
  static const String FONT_FAMILY = 'WeatherIcons';
  static const String FONT_PACKAGE = 'weather_icons';

  /// Función estática constante
  static  IconData create(int codePoint) {
    return   IconData(
      codePoint,
      fontFamily: FONT_FAMILY,
      fontPackage: FONT_PACKAGE,
    );
  }
}

