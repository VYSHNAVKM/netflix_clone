import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';
import 'package:netflix_clone/view/home_screen/widget/containerscroll.dart';
import 'package:netflix_clone/view/home_screen/widget/continuewatching.dart';

import 'package:netflix_clone/view/home_screen/widget/previewscroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Row(
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
          expandedHeight: 300,
          flexibleSpace: CarouselSlider(items: [
            Container(
              height: 415,
              width: 424,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/movie_images/movie01.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 415,
              width: 424,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/movie_images/movie02.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 415,
              width: 424,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/movie_images/movie03.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 415,
              width: 424,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/movie_images/movie04.jpg'),
                      fit: BoxFit.cover)),
            ),
            Container(
              height: 415,
              width: 424,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/movie_images/movie05.jpg'),
                      fit: BoxFit.cover)),
            ),
          ], options: CarouselOptions(autoPlay: true, height: 300)),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) {
              return Column(
                children: [
                  Text(
                    '#2 in batman Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorConstant.textcolor),
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
                            style: TextStyle(
                                fontSize: 15, color: ColorConstant.textcolor),
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
                            style: TextStyle(
                                fontSize: 15, color: ColorConstant.textcolor),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  PreviewScroll(),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 110,
                    ),
                    child: Text(
                      'Continue to watch Movie',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textcolor),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContinueWatching(),
                  ContainerScroll(),
                  ContainerScroll(),
                  ContainerScroll(),
                  ContainerScroll(),
                  ContainerScroll(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
