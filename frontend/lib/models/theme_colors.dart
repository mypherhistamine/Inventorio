import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeConstants {
  Color black = Color(0xff1E212A);
  Color grey = Color(0xffc4c4c4);
  Color pink = Color(0xffDA456C);
  Color blue = Color(0xff44539F);
  Color yellow = Color(0xffD4B132);
  Color purple = Color(0xff80458F);
  Color opaqueWhite = Color.fromRGBO(255, 255, 255, 0.6);
}

class CustomText {
  Widget header(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 36,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold),
    );
  }

  Widget mediumText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18, fontFamily: 'Montserrat', fontWeight: FontWeight.w500),
    );
  }

  Widget mediumHeaderText(String text, {double size, Color color}) {
    return Text(
      text,
      style: TextStyle(
          color: color == null ? Colors.white : color,
          fontSize: size == null ? 18 : size,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500),
    );
  }

  Widget semiBoldText(String text, {double fontsize}) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: fontsize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500),
    );
  }
}
