import 'package:flutter/material.dart';
import 'menu1_screen.dart';

class Laporan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Laporan",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
    );
  }
}
