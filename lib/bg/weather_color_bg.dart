import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/utils/weather_type.dart';

/// 颜色背景层
class WeatherColorBg extends StatelessWidget {
  final WeatherType weatherType;

  /// 控制背景的高度
  final double? height;

  const WeatherColorBg({
    Key? key,
    required this.weatherType,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: WeatherUtil.getColor(weatherType),
        stops: const [0, 1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    );
  }
}
