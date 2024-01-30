import 'package:flutter/material.dart';
import 'package:music_app/features/home/screens/widgets/home_body.dart';
import 'package:music_app/features/home/screens/widgets/search_button.dart';
import 'package:music_app/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MText.homeAppbarTitle),
        centerTitle: false,
        actions: const [SearchButton()],
      ),
      body: const HomeBody(),
    );
  }
}
