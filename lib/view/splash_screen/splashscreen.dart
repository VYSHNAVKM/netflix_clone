import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';

import 'package:netflix_clone/view/username_screen/username_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const UserNameScreen()),
      );
    });

    return Scaffold(
      backgroundColor: bgcolr,
      body: Center(
        child: logo,
      ),
    );
  }
}
