import 'package:flutter/material.dart';

class Pembeli extends StatelessWidget {
  const Pembeli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Pembeli",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
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
                        margin: EdgeInsets.only(left: 110),
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text("No")),
                            DataColumn(label: Text("Nama")),
                            DataColumn(label: Text("Alamat")),
                          ],
                          rows: [
                            DataRow(
                              cells: [
                                DataCell(Text("1")),
                                DataCell(Text("Sultan")),
                                DataCell(Text("Bandung")),
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
