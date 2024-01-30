import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_app/common/widgets/global_widget/custom_buttons.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class NowPlayingButtons extends StatelessWidget {
  const NowPlayingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButtons(
            buttonColor: Colors.transparent,
            buttonWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  MText.follow,
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ],
            ),
            buttonBorderColor: Colors.white,
          )),
          const SizedBox(width: 12),
          Expanded(
              child: CustomButtons(
            buttonColor: MColors.bink,
            buttonWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(MImages.shareIcon),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  MText.share,
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
