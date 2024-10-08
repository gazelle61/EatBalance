import 'package:get/get.dart';
import 'package:eat_balance/controllers/dashboard_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}
