import 'package:flutter/material.dart';

import '../../../../utils/constants/image_strings.dart';

class NowPlayingHeader extends StatelessWidget {
  const NowPlayingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              MImages.soundWave,
              fit: BoxFit.cover,
            )),
        Positioned(
            right: MediaQuery.of(context).size.width * 0.20,
            top: -MediaQuery.of(context).size.width * 0.21,
            child: const Image(
              image: AssetImage(MImages.personMusic),
            ))
      ],
    );
  }
}
