import 'package:get/get.dart';

class ProgressController extends GetxController {
  var steps = 0.0.obs;
  var water = 0.0.obs;
  var protein = 0.0.obs;
  var carbo = 0.0.obs;
  var fat = 0.0.obs;

  void updateSteps(double value) {
    steps.value = value;
  }

  void updateWater(double value) {
    water.value = value;
  }

  void updateProtein(double value) {
    protein.value = value;
  }

  void updateCarbo(double value) {
    carbo.value = value;
  }

  void updateFat(double value) {
    fat.value = value;
  }
}
