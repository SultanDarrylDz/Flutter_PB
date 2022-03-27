import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/transaksi_controller.dart';

class TransaksiScreen extends StatelessWidget {
  const TransaksiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TransaksiController transaksicontroller = Get.put(TransaksiController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Transaksi",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
      body: Obx(
        () => transaksicontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: transaksicontroller.transaksiList.length,
                itemBuilder: (content, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                         
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                   decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/lib.jpg"),
                                  fit: BoxFit.cover)),
                                    margin: EdgeInsets.all(15),
                                    child: DataTable(
                                      columns: [
                                       DataColumn(label: Text("ID Buku")),
                            DataColumn(label: Text("ID Pembeli")),
                            DataColumn(label: Text("Tanggal Beli")),
                            DataColumn(label: Text("Jumlah Buku")),
                            DataColumn(label: Text("Harga")),
                            DataColumn(label: Text("Total")),
                            DataColumn(label: Text("Uang")),
                            DataColumn(label: Text("Kembalian")),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: [
                                              DataCell(Text(transaksicontroller
                                    .transaksiList[index].bukuId
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].pembeliId
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].tglBeli
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].jumlahBuku
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].harga
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].total
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].uang
                                    .toString())),
                                    DataCell(Text(transaksicontroller
                                    .transaksiList[index].kembalian
                                    .toString())),
                                          ],
                                        ),
                                      ],
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                    )),
                              ]),
                        ),
                      ],
                    ),
                  );
                },
              )),
      ),
    );
  }
}