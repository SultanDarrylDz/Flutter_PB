import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/route_manager.dart';
import '../services/book_service.dart';
import '../models/book_model.dart';

class BookController extends GetxController {
  var bookList = <BookModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBookData();
  }

  void fetchBookData() async {}
}
