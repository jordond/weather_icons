import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_icons/src/util/rotate.dart';

/// Create a rotated 'wind' [Icon] using a [degree] between 0-360.
///
/// Use the static presets, or instantiate [WindIcon] with an [degree].
///
/// Example:
///
///     // Using custom degree between 0-360
///     IconButton(
///       icon: WindIcon(degree: 45),
///       onPressed: () { }
///     );
///
///     // Using a preset degree
///     IconButton(
///       icon: WindIcon.towards_ne,
///       onPressed: () { }
///     );
class WindIcon extends BoxedIcon {
  final num degree;

   const WindIcon({
    required this.degree,
    super.key,
    super.size,
    super.color,
  })  : assert(degree >= 0 && degree <= 360),
        super(WeatherIcons.wind);

  @override
  Widget build(BuildContext context) {
    return Rotate(
      degree: degree,
      child: super.build(context),
    );
  }

  // Towards

  /// [WindIcon] for pointing towards  **North**.
  static final towards_n = WindIcon(degree: 0);

  /// [WindIcon] for pointing towards  **North by North-East**.
  static final towards_nne = WindIcon(degree: 22.5);

  /// [WindIcon] for pointing towards  **North-East**.
  static final towards_ne = WindIcon(degree: 45);

  /// [WindIcon] for pointing towards  **East by North-East**.
  static final towards_ene = WindIcon(degree: 67.5);

  /// [WindIcon] for pointing towards  **East**.
  static final towards_e = WindIcon(degree: 90);

  /// [WindIcon] for pointing towards  **Easy by South-East**.
  static final towards_ese = WindIcon(degree: 112.5);

  /// [WindIcon] for pointing towards  **South-East**.
  static final towards_se = WindIcon(degree: 135);

  /// [WindIcon] for pointing towards  **South by South-East**.
  static final towards_sse = WindIcon(degree: 157.5);

  /// [WindIcon] for pointing towards  **South**.
  static final towards_s = WindIcon(degree: 180);

  /// [WindIcon] for pointing towards  **South by South-West**.
  static final towards_ssw = WindIcon(degree: 202.5);

  /// [WindIcon] for pointing towards  **South-West**.
  static final towards_sw = WindIcon(degree: 225);

  /// [WindIcon] for pointing towards  **West by South-West**.
  static final towards_wsw = WindIcon(degree: 247.5);

  /// [WindIcon] for pointing towards  **West**.
  static final towards_w = WindIcon(degree: 270);

  /// [WindIcon] for pointing towards  **West by North-West**.
  static final towards_wnw = WindIcon(degree: 292.5);

  /// [WindIcon] for pointing towards  **North-West**.
  static final towards_nw = WindIcon(degree: 315);

  /// [WindIcon] for pointing towards  **North by North-West**.
  static final towards_nnw = WindIcon(degree: 337.5);

  // From

  /// [WindIcon] for pointing from  **North**.
  static final from_n = WindIcon(degree: 360);

  /// [WindIcon] for pointing from  **North by North-East**.
  static final from_nne = WindIcon(degree: 337.5);

  /// [WindIcon] for pointing from  **North-East**.
  static final from_ne = WindIcon(degree: 315);

  /// [WindIcon] for pointing from  **East by North-East**.
  static final from_ene = WindIcon(degree: 292.5);

  /// [WindIcon] for pointing from  **East**.
  static final from_e = WindIcon(degree: 270);

  /// [WindIcon] for pointing from  **East by South-East**.
  static final from_ese = WindIcon(degree: 247.5);

  /// [WindIcon] for pointing from  **South-East**.
  static final from_se = WindIcon(degree: 225);

  /// [WindIcon] for pointing from  **South by South-East**.
  static final from_sse = WindIcon(degree: 202.5);

  /// [WindIcon] for pointing from  **South**.
  static final from_s = WindIcon(degree: 180);

  /// [WindIcon] for pointing from  **South by South-West**.
  static final from_ssw = WindIcon(degree: 157.5);

  /// [WindIcon] for pointing from  **South-West**.
  static final from_sw = WindIcon(degree: 135);

  /// [WindIcon] for pointing from  **West by South-West**.
  static final from_wsw = WindIcon(degree: 112.5);

  /// [WindIcon] for pointing from  **West**.
  static final from_w = WindIcon(degree: 90);

  /// [WindIcon] for pointing from  **West by North-West**.
  static final from_wnw = WindIcon(degree: 67.5);

  /// [WindIcon] for pointing from  **North-West**.
  static final from_nw = WindIcon(degree: 45);

  /// [WindIcon] for pointing from  **North by North-West**.
  static final from_nnw = WindIcon(degree: 22.5);

}