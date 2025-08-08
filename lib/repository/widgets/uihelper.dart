import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontWeight,
      String? fontfamily,
      required double fontSize}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontfamily ?? "regular",
          fontWeight: fontWeight,
          color: color),
    );
  }
}
