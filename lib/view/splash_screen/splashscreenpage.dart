import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';

import 'package:netflix_clone/view/username_screen/username.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const UserName()),
      );
    });

    return Scaffold(
      backgroundColor: ColorConstant.bgcolr,
      body: Center(
        child: ImageConstant.logo,
      ),
    );
  }
}
