import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../controllers/now_playing_controller.dart';

class NowPlayingPlay extends StatelessWidget {
  const NowPlayingPlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<NowPlayingController>(
        init: NowPlayingController(),
        builder: (controller) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Duration(seconds: controller.currentSlider.toInt())
                        .toString()
                        .split('.')[0]
                        .substring(2),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 95,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 4),
                        trackShape: const RectangularSliderTrackShape(),
                        trackHeight: 4,
                      ),
                      child: Slider(
                        value: controller.currentSlider.value,
                        max: controller.duration.toDouble(),
                        min: 0,
                        inactiveColor: Colors.grey[500],
                        activeColor: MColors.bink,
                        onChanged: (val) {
                          controller.currentSlider.value = val;
                        },
                      ),
                    ),
                  ),
                  Text(
                    Duration(seconds: controller.duration.toInt())
                        .toString()
                        .split('.')[0]
                        .substring(2),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(MImages.previusIcon),
                  const SizedBox(width: 20),
                  SvgPicture.asset(MImages.rewindIcon),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      controller.togglePause();
                      controller.increment();
                    },
                    child: Container(
                      width: 72,
                      height: 72,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          !controller.isPaused.value
                              ? MImages.pause
                              : MImages.playIcon,
                          color: Colors.black,
                          width: 29,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(MImages.forwardFastIcon),
                  const SizedBox(width: 20),
                  SvgPicture.asset(MImages.forwardIcon),
                ],
              ),
            ],
          );
        });
  }
}
