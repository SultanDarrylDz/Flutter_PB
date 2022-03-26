import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/book_controller.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookController bookcontroller = Get.put(BookController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Buku",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
      body: Obx(
        () => bookcontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bookcontroller.bookList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/lib.jpg"),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                margin: EdgeInsets.all(15),
                                child: DataTable(
                                  columns: [
                                    DataColumn(label: Text("Kode")),
                                    DataColumn(label: Text("Judul")),
                                    DataColumn(label: Text("Nama Kategori")),
                                    DataColumn(label: Text("Nama Pengarang")),
                                    DataColumn(label: Text("Nama Penerbit")),
                                    DataColumn(label: Text("Deskripsi")),
                                    DataColumn(label: Text("Stock")),
                                    DataColumn(label: Text("harga")),
                                    DataColumn(label: Text("cover")),
                                  ],
                                  rows: [
                                    DataRow(
                                      cells: [
                                        DataCell(Text(bookcontroller
                                            .bookList[index].kodeBuku
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].judul
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].namaKategori
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].namaPengarang
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].namaPenerbit
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].deskripsi
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].stok
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].harga
                                            .toString())),
                                        DataCell(Text(bookcontroller
                                            .bookList[index].cover
                                            .toString())),
                                      ],
                                    ),
                                  ],
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
