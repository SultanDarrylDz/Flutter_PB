import 'package:flutter/material.dart';
import 'menu1_screen.dart';
import 'buku.dart';
import 'pembeli.dart';
import 'transaksi.dart';
import 'package:userinterface/screens/book_screen.dart';

class Menu1_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Penjualan Buku",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.black,
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/lib.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: 700,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/logo2.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              margin: EdgeInsets.all(10),
                              child: RaisedButton(
                                child: Icon(
                                  Icons.book,
                                  color: Colors.black,
                                  size: 60,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BookScreen()));
                                },
                              ),
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              margin: EdgeInsets.all(10),
                              child: RaisedButton(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  size: 60,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Pembeli()));
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              margin: EdgeInsets.all(10),
                              child: RaisedButton(
                                child: Icon(
                                  Icons.shopping_basket,
                                  color: Colors.black,
                                  size: 60,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Transaksi()));
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
