import 'package:flutter/material.dart';
import 'package:music_app/utils/constants/text_strings.dart';

class PodcastsScreen extends StatelessWidget {
  const PodcastsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          MText.podcasts,
          style:
              Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
