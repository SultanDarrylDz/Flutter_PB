import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';

import '../models/transaksi_model.dart';
import '../services/transaksi_service.dart';

class TransaksiController extends GetxController {
  var transaksiList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBookData();
  }

  void fetchBookData() async {
    try {
      isLoading(true);
      var transaksi = await TransaksiService.fetchTransaksiData();
      transaksiList.value = transaksi.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
