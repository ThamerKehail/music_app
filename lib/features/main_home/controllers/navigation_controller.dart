import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/features/home/screens/home.dart';
import 'package:music_app/features/home/screens/search.dart';
import 'package:music_app/features/home/screens/settings.dart';

import '../../home/screens/podcasts.dart';

class NavigationController extends GetxController {
  RxInt currentIndex = 0.obs;
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SizedBox(),
    const PodcastsScreen(),
    const SettingsScreen(),
  ];

  final RxBool isChangeOne = false.obs;
  void toggleChangeOne() async {
    isChangeOne.toggle();
    await Future.delayed(const Duration(milliseconds: 100));
    isChangeOne.toggle();
  }

  final RxBool isChangeTwo = false.obs;
  void toggleChangeTwo() async {
    isChangeTwo.toggle();
    await Future.delayed(const Duration(milliseconds: 100));
    isChangeTwo.toggle();
  }

  final RxBool isChangeThree = false.obs;
  void toggleChangeThree() async {
    isChangeThree.toggle();
    await Future.delayed(const Duration(milliseconds: 100));
    isChangeThree.toggle();
  }

  final RxBool isChangeFour = false.obs;
  void toggleChangeFour() async {
    isChangeFour.toggle();
    await Future.delayed(const Duration(milliseconds: 100));
    isChangeFour.toggle();
  }

  onSelected(int index) {
    if ((index == 1 && currentIndex.value == 0) ||
        (currentIndex.value == 1 && index == 0)) {
      toggleChangeOne();
    }
    if ((index == 3 && currentIndex.value == 0) ||
        (currentIndex.value == 3 && index == 0) ||
        (currentIndex.value == 4 && index == 1)) {
      toggleChangeOne();
      toggleChangeTwo();
      toggleChangeThree();
    }
    if ((index == 4 && currentIndex.value == 0) ||
        (index == 0 && currentIndex.value == 4)) {
      toggleChangeOne();
      toggleChangeTwo();
      toggleChangeThree();
      toggleChangeFour();
    }
    if ((currentIndex.value == 1 && index == 3) ||
        (currentIndex.value == 3 && index == 1)) {
      toggleChangeTwo();
      toggleChangeThree();
    }
    if (currentIndex.value == 1 && index == 4) {
      toggleChangeTwo();
      toggleChangeThree();
      toggleChangeFour();
    }

    if ((currentIndex.value == 3 && index == 4) ||
        (currentIndex.value == 4 && index == 3)) {
      toggleChangeFour();
    }
    currentIndex.value = index;
  }
}
