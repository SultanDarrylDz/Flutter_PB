import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: MainScreen(),
        duration: 5000,
        imageSize: 500,
        imageSrc: "assets/img/logo2.png",
        backgroundColor: Colors.white,
      ),
    );
  }
}
