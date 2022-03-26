import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';

import '../models/pembeli_model.dart';
import '../services/pembeli_service.dart';

class PembeliController extends GetxController {
  var pembeliList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPembeliData();
  }

  void fetchPembeliData() async {
    try {
      isLoading(true);
      var pembeli = await PembeliService.fetchPembeliData();
      pembeliList.value = pembeli.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
