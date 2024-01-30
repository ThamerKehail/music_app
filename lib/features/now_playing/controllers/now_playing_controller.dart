import 'package:get/get.dart';

class NowPlayingController extends GetxController {
  bool playing = false;

  Rx<double> currentSlider = 0.0.obs;
  int duration = 100;
  final RxBool isPaused = true.obs;
  void togglePause() {
    print(isPaused.value);
    isPaused.toggle();
  }

  Future<void> increment() async {
    for (int i = currentSlider.toInt(); i <= 100; i++) {
      if (isPaused.value) {
        await Future.delayed(Duration(milliseconds: 50));
        currentSlider.value = i.toDouble();
        break;
      } else {
        await Future.delayed(Duration(seconds: 1));
        currentSlider.value = i.toDouble();
      }
    }
  }
}
