import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/colors.dart';
import '../../controllers/navigation_controller.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.controller,
    required this.size,
    required this.icon,
    required this.index,
  });

  final NavigationController controller;
  final Size size;
  final String icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedContainer(
            width: controller.currentIndex.value == index ? 25 : 20,
            height: controller.currentIndex.value == index ? 25 : 20,
            duration: const Duration(milliseconds: 200),
            // curve: Curves.fastLinearToSlowEaseIn,
            margin: EdgeInsets.only(
              // bottom: index == currentIndex ? 0 : size.width * .029,
              //right:  size.width * .0422,
              left: size.width * .0422,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(
              icon,
            )),
        const SizedBox(
          height: 8,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: EdgeInsets.only(
            // bottom: index == currentIndex ? 0 : size.width * .029,
            //right:  size.width * .0422,
            left: size.width * .0422,
          ),
          //  curve: Curves.easeInQuad,

          width: controller.currentIndex.value == index ? size.width * .05 : 0,
          height: size.width * .014,
          decoration: BoxDecoration(
            color: MColors.bink,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}
