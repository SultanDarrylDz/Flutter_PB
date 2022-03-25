import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Tentang Saya",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/lib.jpg"), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      height: 300,
                      margin: EdgeInsets.all(10),
                      child: ClipOval(
                        child:
                            Image(image: AssetImage('assets/img/avatar.png')),
                      ),
                    ),
                    Container(
                      width: 400,
                      height: 400,
                      margin: EdgeInsets.all(20),
                      child: DataTable(
                        dataTextStyle: TextStyle(color: Colors.black),
                        columns: const <DataColumn>[
                          DataColumn(
                              label: Text("Nama",
                                  style: TextStyle(color: Colors.black))),
                          DataColumn(
                              label: Text("Sultan Darryl Dzulfikar",
                                  style: TextStyle(color: Colors.black))),
                        ],
                        rows: const <DataRow>[
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Tempat Tanggal Lahir")),
                              DataCell(Text("Bandung, 24 Agustus 2004")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Jenis Kelamin")),
                              DataCell(Text("Laki-Laki")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Agama")),
                              DataCell(Text("Islam")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Alamat")),
                              DataCell(Text("Jl. Cicukang")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Sekolah")),
                              DataCell(Text("SMK Assalaam Bandung")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Kelas")),
                              DataCell(Text("XII RPL 3")),
                            ],
                          ),
                          DataRow(
                            cells: <DataCell>[
                              DataCell(Text("Hobi")),
                              DataCell(Text("Musik")),
                            ],
                          ),
                        ],
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    )
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
