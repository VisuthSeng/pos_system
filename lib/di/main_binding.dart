import 'package:get/get.dart';
import 'package:pos_system/presentation/controller/pos_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    //customer di
    Get.put<PosController>(
      PosController(),
    );
  }
}
