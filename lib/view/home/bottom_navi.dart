import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/view/commingsoon_screen/commingsoonpage.dart';
import 'package:netflix_clone/view/download_screen/downloadpage.dart';
import 'package:netflix_clone/view/home_screen/homepage.dart';
import 'package:netflix_clone/view/more_screen/morepage.dart';
import 'package:netflix_clone/view/search_screen/searchpage.dart';

class MyHome extends StatefulWidget {
  MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _currentindex = 0;
  final List<Widget> _myList = [
    HomePage(),
    SearchPage(),
    CommingSoonPage(),
    DownloadPage(),
    MorePage(),
  ];

  void onItemTap(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.bgcolr,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: ColorConstant.bgcolr,
              selectedItemColor: ColorConstant.textcolor,
              unselectedItemColor: Colors.grey.shade700,
              currentIndex: _currentindex,
              onTap: onItemTap,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.photo_library), label: "Coming Soon"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: "Downloads"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz), label: "More"),
              ]),
          body: _myList[_currentindex]),
    );
  }
}
