import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../models/music_model.dart';
import 'music_name_description.dart';
import 'music_status_container.dart';

class MusicCard extends StatelessWidget {
  final MusicModel musicModel;
  const MusicCard({
    super.key,
    required this.musicModel,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return GestureDetector(
        onTap: () {
          controller.currentMusic.value = musicModel.id;
        },
        child: Obx(
          () => Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: controller.currentMusic.value == musicModel.id
                  ? Colors.white.withOpacity(0.2)
                  : Colors.transparent,
            ),
            child: Row(
              children: [
                MusicStatusContainer(
                  isPlay: controller.currentMusic.value == musicModel.id,
                ),
                const SizedBox(
                  width: 18,
                ),
                MusicNameAndDescription(
                    name: musicModel.name, desc: musicModel.description),
                const Spacer(),
                Text(
                  Duration(seconds: musicModel.duration.toInt())
                      .toString()
                      .split('.')[0]
                      .substring(2),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ));
  }
}
