import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';

import '../models/book_model.dart';
import '../services/book_service.dart';

class BookController extends GetxController {
  var bookList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBookData();
  }

  void fetchBookData() async {
    try {
      isLoading(true);
      var book = await BookService.fetchBookData();
      bookList.value = book.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
