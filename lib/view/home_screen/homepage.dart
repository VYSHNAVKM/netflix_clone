import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';
import 'package:netflix_clone/view/home_screen/widget/containerscroll.dart';

import 'package:netflix_clone/view/home_screen/widget/previewscroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/png/bgimage1.png'))),
          height: 415,
          width: 424,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ImageConstant.Homenetflixicon,
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'TV Shows',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: ColorConstant.textcolor),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Movies',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: ColorConstant.textcolor),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'My List',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: ColorConstant.textcolor),
                    ),
                  ),
                ],
              ),
              Text(
                '#2 in batman Today',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorConstant.textcolor),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.add,
                  color: ColorConstant.textcolor,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'My List',
                  style:
                      TextStyle(fontSize: 15, color: ColorConstant.textcolor),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  height: 45,
                  width: 100,
                  child: ImageConstant.playbutton),
            ),
            Column(
              children: [
                Icon(
                  Icons.add,
                  color: ColorConstant.textcolor,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'My List',
                  style:
                      TextStyle(fontSize: 15, color: ColorConstant.textcolor),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        PreviewScroll(),
        ContainerScroll(),
        ContainerScroll(),
        ContainerScroll(),
        ContainerScroll(),
        ContainerScroll(),
      ],
    );
  }
}
