import 'package:flutter/material.dart';
import 'package:dating/config/size_config.dart';

ThemeData appTheme() {
  Color primaryColor = const Color(0xFFFFB6C1);
  Color splashColor = Colors.pink;

  TextTheme textTheme(TextTheme base) {
    return base.copyWith(
      bodyText1: base.bodyText1!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.textMultiplier * 3.8,
      ),
    );
  }

  final ThemeData themeData = ThemeData.light();
  return themeData.copyWith(
      textTheme: textTheme(themeData.textTheme),
      scaffoldBackgroundColor: primaryColor,
      splashColor: splashColor,
      primaryColor: primaryColor);
}
