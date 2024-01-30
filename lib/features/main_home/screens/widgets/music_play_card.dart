import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:music_app/features/now_playing/screens/now_playing.dart';
import 'package:music_app/utils/constants/colors.dart';
import 'package:music_app/utils/constants/image_strings.dart';
import 'package:music_app/utils/constants/text_strings.dart';

class MusicPlayCard extends StatelessWidget {
  const MusicPlayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ).copyWith(bottom: 35),
      child: InkWell(
        onTap: () => Get.to(() => const NowPlayingScreen()),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: MColors.black,
                        border: Border(
                          top: BorderSide(
                              width: 2, color: MColors.white.withOpacity(.06)),
                          left: BorderSide(
                              width: 2, color: MColors.white.withOpacity(.04)),
                          right: BorderSide(
                              width: 2, color: MColors.white.withOpacity(.04)),
                        )),
                    child: Row(
                      children: [
                        const Image(image: AssetImage(MImages.music_1)),
                        const SizedBox(width: 5),
                        Text(
                          MText.musicName,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const Spacer(),
                        SvgPicture.asset(MImages.pause),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset(MImages.next),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 2,
                      color: MColors.bink,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
