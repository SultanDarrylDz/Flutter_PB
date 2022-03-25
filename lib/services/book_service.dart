import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/book_model.dart';

class BookService {
  static Future<BookModel> fetchBookData() async {
    final response = await http
        .get(Uri.parse('https://penjualanbuku.herokuapp.com/api/buku'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BookModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
