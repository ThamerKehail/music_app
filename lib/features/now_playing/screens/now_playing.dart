import 'package:flutter/material.dart';
import 'package:music_app/features/now_playing/screens/widgets/now_playing_buttons.dart';
import 'package:music_app/features/now_playing/screens/widgets/now_playing_header.dart';
import 'package:music_app/features/now_playing/screens/widgets/now_playing_name.dart';
import 'package:music_app/features/now_playing/screens/widgets/now_playing_play.dart';
import 'package:music_app/utils/constants/image_strings.dart';
import 'package:music_app/utils/constants/text_strings.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final NowPlayingController controller = Get.put(NowPlayingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(MText.nowPlaying),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(MImages.background),
          fit: BoxFit.cover,
        )),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              NowPlayingHeader(),
              SizedBox(
                height: 100,
              ),
              NowPlayingButtons(),
              SizedBox(
                height: 82,
              ),
              NowPlayingName(),
              SizedBox(
                height: 82,
              ),
              NowPlayingPlay(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
