import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const semiBold18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  static const regular20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const regular30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.normal, fontFamily: kGtSectraFine);
  static const regular14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const regular16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
}
