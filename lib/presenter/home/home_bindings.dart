import 'package:evento001/infra/repositories/cats_repository.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(CatsRepository());
    Get.put(HomeController(Get.find()));
  }
}
