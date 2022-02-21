import 'package:dating/config/app_theme.dart';
import 'package:flutter/material.dart';

Widget icon({required IconData icon}) {
  return Container(
    child: Icon(
      icon,
      color: Colors.white,
    ),
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      color: appTheme().splashColor,
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}
