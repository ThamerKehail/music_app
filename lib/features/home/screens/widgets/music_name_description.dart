import 'package:flutter/material.dart';

class MusicNameAndDescription extends StatelessWidget {
  const MusicNameAndDescription({
    super.key,
    required this.name,
    required this.desc,
  });

  final String name;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 5),
        Text(
          desc,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
