import 'package:get/get.dart';

class HomeController extends GetxController {
  bool passed = false;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  void test() {
    passed = !passed;
    if (passed) {
      xOffset = 230;
      yOffset = 150;
      scaleFactor = 0.6;
    } else {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
    }
    update();
  }
}
