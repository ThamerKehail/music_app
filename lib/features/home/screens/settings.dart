import 'package:flutter/material.dart';
import 'package:music_app/utils/constants/text_strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          MText.settings,
          style:
              Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
