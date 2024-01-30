import 'package:flutter/material.dart';
import 'package:music_app/utils/constants/colors.dart';
import 'package:music_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:music_app/utils/theme/custom_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData theme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: MColors.primary,
      textTheme: MTextTheme.mTextTheme,
      appBarTheme: MAppBarTheme.mAppBarTheme);
}
