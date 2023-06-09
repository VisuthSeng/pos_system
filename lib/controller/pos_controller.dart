import 'package:get/get.dart';
import 'package:pos_system/data/datasource/pos_data.dart';
import 'package:pos_system/data/model/pos_model.dart';

class PosController extends GetxController {
  var listPosData = RxList<PosModel>();
  @override
  void onInit() {
    loadPos();

    super.onInit();
  }

  loadPos() async {
    listPosData.clear();
    var list = await PosModelData.demoPos();
    listPosData.assignAll(list);
  }
}
