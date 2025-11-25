import 'package:flutter/material.dart';

Widget commonTextWidgetClashFont({
  String? text,
  double? fontSize,
  Color? color,
}) {
  return Text(
    text!,
    style: TextStyle(
      fontFamily: 'ClashDisplay',
      fontSize: fontSize,
      color: color,
    ),
  );
}
