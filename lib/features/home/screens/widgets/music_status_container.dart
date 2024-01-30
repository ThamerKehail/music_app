import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/utils/constants/colors.dart';

import '../../../../utils/constants/image_strings.dart';

class MusicStatusContainer extends StatelessWidget {
  const MusicStatusContainer({
    super.key,
    required this.isPlay,
  });

  final bool isPlay;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 33,
        height: 33,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isPlay ? MColors.bink : Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(
            isPlay ? MImages.pause : MImages.playIcon,
            color: isPlay ? Colors.white : MColors.bink,
            width: 12,
            height: 12,
          ),
        ));
  }
}
