import 'package:flutter/material.dart';

class Buku extends StatelessWidget {
  const Buku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Buku",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: EdgeInsets.all(15),
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text("No")),
                            DataColumn(label: Text("Kode")),
                            DataColumn(label: Text("Judul")),
                            DataColumn(label: Text("Kategori")),
                            DataColumn(label: Text("Pengarang")),
                            DataColumn(label: Text("QTY")),
                            DataColumn(label: Text("Harga")),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text("1")),
                                DataCell(Text("BKU001")),
                                DataCell(Text("Harry Potter")),
                                DataCell(Text("Action")),
                                DataCell(Text("Sultan")),
                                DataCell(Text("192")),
                                DataCell(Text("Rp. 12000")),
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
