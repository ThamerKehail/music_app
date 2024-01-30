import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MAppBarTheme {
  MAppBarTheme._();
  static const mAppBarTheme = AppBarTheme(
      backgroundColor: MColors.primary,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17));
}
