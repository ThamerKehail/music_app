import 'package:flutter/material.dart';

import '../../../../utils/constants/text_strings.dart';

class NowPlayingName extends StatelessWidget {
  const NowPlayingName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          MText.musicName,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 19,
              ),
        ),
        Text(
          MText.musicDesc,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
