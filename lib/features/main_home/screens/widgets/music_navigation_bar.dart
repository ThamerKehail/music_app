import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../controllers/navigation_controller.dart';
import 'bottom_nav_icon.dart';

class MusicNavigationBar extends StatelessWidget {
  const MusicNavigationBar({
    super.key,
    required this.controller,
    required this.size,
  });

  final NavigationController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          decoration: BoxDecoration(
            color: const Color(0xFF303033).withOpacity(0.4), // #303033
            boxShadow: [
              BoxShadow(
                color: const Color(0xff00000080).withOpacity(0.25),
                offset: const Offset(0, -2),
                blurRadius: 25,
              ),
            ],
          ),
          child: Stack(
            children: [
              NavigationBar(
                height: 80,
                elevation: 0,
                backgroundColor: MColors.primary,
                indicatorColor: Colors.transparent,
                selectedIndex: controller.currentIndex.value,
                onDestinationSelected: controller.onSelected,
                destinations: [
                  NavigationDestination(
                      icon: BottomNavIcon(
                        controller: controller,
                        size: size,
                        icon: MImages.homeIcon,
                        index: 0,
                      ),
                      label: ""),
                  NavigationDestination(
                      icon: BottomNavIcon(
                        controller: controller,
                        size: size,
                        icon: MImages.searchIcon,
                        index: 1,
                      ),
                      label: ""),
                  NavigationDestination(
                      icon: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: MColors.bink,
                            ),
                            child: const Icon(
                              Icons.headphones,
                              color: Colors.white,
                            )),
                      ),
                      label: ""),
                  NavigationDestination(
                      icon: BottomNavIcon(
                        controller: controller,
                        size: size,
                        icon: MImages.productIcon,
                        index: 3,
                      ),
                      label: ""),
                  NavigationDestination(
                      icon: BottomNavIcon(
                        controller: controller,
                        size: size,
                        icon: MImages.settingsIcon,
                        index: 4,
                      ),
                      label: ""),
                ],
              ),
              Positioned(
                bottom: Platform.isIOS
                    ? 47.2
                    : MediaQuery.of(context).size.width * 0.03,
                left: size.width * 0.1,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  margin: EdgeInsets.only(
                    // bottom: index == currentIndex ? 0 : size.width * .029,
                    //right:  size.width * .0422,
                    left: size.width * .0422,
                  ),
                  //  curve: Curves.easeInQuad,

                  width: controller.isChangeOne.value ? size.width * .4 : 0,
                  height: size.width * .014,
                  decoration: BoxDecoration(
                    color: MColors.bink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Positioned(
                bottom: Platform.isIOS
                    ? 47.2
                    : MediaQuery.of(context).size.width * 0.03,
                left: size.width * 0.3,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  margin: EdgeInsets.only(
                    // bottom: index == currentIndex ? 0 : size.width * .029,
                    //right:  size.width * .0422,
                    left: size.width * .0422,
                  ),
                  //  curve: Curves.easeInQuad,

                  width: controller.isChangeTwo.value ? size.width * .4 : 0,
                  height: size.width * .014,
                  decoration: BoxDecoration(
                    color: MColors.bink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Positioned(
                bottom: Platform.isIOS
                    ? 47.2
                    : MediaQuery.of(context).size.width * 0.03,
                left: size.width * 0.5,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  margin: EdgeInsets.only(
                    // bottom: index == currentIndex ? 0 : size.width * .029,
                    //right:  size.width * .0422,
                    left: size.width * .0422,
                  ),
                  //  curve: Curves.easeInQuad,

                  width: controller.isChangeThree.value ? size.width * .4 : 0,
                  height: size.width * .014,
                  decoration: BoxDecoration(
                    color: MColors.bink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Positioned(
                bottom: Platform.isIOS
                    ? 47.2
                    : MediaQuery.of(context).size.width * 0.03,
                left: size.width * 0.7,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  margin: EdgeInsets.only(
                    // bottom: index == currentIndex ? 0 : size.width * .029,
                    //right:  size.width * .0422,
                    left: size.width * .0422,
                  ),
                  //  curve: Curves.easeInQuad,

                  width: controller.isChangeFour.value ? size.width * .4 : 0,
                  height: size.width * .014,
                  decoration: BoxDecoration(
                    color: MColors.bink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
