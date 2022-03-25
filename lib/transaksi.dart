import 'package:flutter/material.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Transaksi",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/lib.jpg"), fit: BoxFit.cover)),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(15),
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text("No")),
                            DataColumn(label: Text("Nama")),
                            DataColumn(label: Text("Alamat")),
                            DataColumn(label: Text("Judul Buku")),
                            DataColumn(label: Text("Jumlah Buku")),
                            DataColumn(label: Text("Uang Bayar")),
                            DataColumn(label: Text("Total Harga")),
                            DataColumn(label: Text("Kembalian")),
                            DataColumn(label: Text("Tanggal Beli")),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text("1")),
                                DataCell(Text("Sultan")),
                                DataCell(Text("Bandung")),
                                DataCell(Text("Harry Potter")),
                                DataCell(Text("6")),
                                DataCell(Text("Rp. 200000")),
                                DataCell(Text("Rp. 192000")),
                                DataCell(Text("Rp. 8000")),
                                DataCell(Text("23/03/2022")),
                              ],
                            ),
                          ],
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
