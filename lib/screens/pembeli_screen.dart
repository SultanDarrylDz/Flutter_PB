import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/pembeli_controller.dart';

class PembeliScreen extends StatelessWidget {
  const PembeliScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PembeliController pembelicontroller = Get.put(PembeliController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Data Pembeli')),
      ),
      body: Obx(
        () => pembelicontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pembelicontroller.pembeliList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text("Kode Pembeli")),
                            DataColumn(label: Text("Nama Pembeli")),
                            DataColumn(label: Text("Alamat")),
                            DataColumn(label: Text("No HP")),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text(pembelicontroller
                                    .pembeliList[index].kodePembeli
                                    .toString())),
                                DataCell(Text(pembelicontroller
                                    .pembeliList[index].namaPembeli
                                    .toString())),
                                DataCell(Text(pembelicontroller
                                    .pembeliList[index].alamat
                                    .toString())),
                                DataCell(Text(pembelicontroller
                                    .pembeliList[index].noHp
                                    .toString())),
                              ],
                            ),
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
