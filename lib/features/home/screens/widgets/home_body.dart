import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import 'music_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return ListView.builder(
        shrinkWrap: true,
        itemCount: controller.musics.length,
        itemBuilder: (context, index) {
          return MusicCard(
            musicModel: controller.musics[index],
          );
        });
  }
}
