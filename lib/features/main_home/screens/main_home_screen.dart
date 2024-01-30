import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/features/home/controllers/home_controller.dart';
import 'package:music_app/features/main_home/screens/widgets/music_navigation_bar.dart';
import 'package:music_app/features/main_home/screens/widgets/music_play_card.dart';

import '../controllers/navigation_controller.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final NavigationController controller = Get.put(NavigationController());
    final HomeController homeController = Get.put(HomeController());

    return Obx(() => Scaffold(
          floatingActionButton: const MusicPlayCard(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar:
              MusicNavigationBar(controller: controller, size: size),
          body: controller.screens[controller.currentIndex.value],
        ));
  }
}
