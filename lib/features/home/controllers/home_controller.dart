import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import '../models/music_model.dart';

class HomeController extends GetxController {
  Rx<bool> showAppbar = true.obs; //this is to show app bar
  ScrollController scrollBottomBarController =
      ScrollController(); // set controller on scrolling
  bool isScrollingDown = false;
  Rx<bool> show = true.obs;
  double bottomBarHeight = 75; // set bottom bar height
  double _bottomBarOffset = 0;

  @override
  void onInit() {
    myScroll();
    super.onInit();
  }

  @override
  void dispose() {
    scrollBottomBarController.removeListener(() {});
    super.dispose();
  }

  void showBottomBar() {
    show.value = true;
  }

  void hideBottomBar() {
    show.value = false;
  }

  void myScroll() async {
    scrollBottomBarController.addListener(() {
      if (scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          showAppbar.value = false;
          hideBottomBar();
        }
      }
      if (scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          showAppbar.value = true;
          showBottomBar();
        }
      }
    });
  }

  RxInt currentMusic = 0.obs;
  List<MusicModel> musics = [
    MusicModel(
        id: 1, name: "Bailando", description: "Billy Ray Cyrus", duration: 240),
    MusicModel(
        id: 2, name: "Cuando Me Enamoron", description: "Mabel", duration: 365),
    MusicModel(
        id: 3,
        name: "Dirty Dancer",
        description: "Alec Benjamin",
        duration: 342),
    MusicModel(
        id: 4,
        name: "Finally Found You",
        description: "Alec Benjamin",
        duration: 423),
    MusicModel(
        id: 5, name: "Heart Attack", description: "Bazzi", duration: 632),
    MusicModel(
        id: 6, name: "Heartbeat", description: "Jonas Brothers", duration: 234),
    MusicModel(id: 7, name: "Hero", description: "BLACKPINK", duration: 432),
    MusicModel(
        id: 8,
        name: "Move To Miami",
        description: "Alec Benjamin",
        duration: 653),
    MusicModel(
        id: 9, name: "Bailando", description: "Billy Ray Cyrus", duration: 240),
    MusicModel(
        id: 10,
        name: "Cuando Me Enamoron",
        description: "Mabel",
        duration: 365),
    MusicModel(
        id: 11,
        name: "Dirty Dancer",
        description: "Alec Benjamin",
        duration: 342),
    MusicModel(
        id: 12,
        name: "Finally Found You",
        description: "Alec Benjamin",
        duration: 423),
    MusicModel(
        id: 13, name: "Heart Attack", description: "Bazzi", duration: 632),
    MusicModel(
        id: 14,
        name: "Heartbeat",
        description: "Jonas Brothers",
        duration: 234),
    MusicModel(id: 15, name: "Hero", description: "BLACKPINK", duration: 432),
    MusicModel(
        id: 16,
        name: "Move To Miami",
        description: "Alec Benjamin",
        duration: 653),
  ];
}
