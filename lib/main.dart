import 'package:flutter/material.dart';
import 'package:netflix_clone/view/splash_screen/splashscreenpage.dart';

void main() {
  runApp(NetflixHome());
}

class NetflixHome extends StatelessWidget {
  const NetflixHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}
