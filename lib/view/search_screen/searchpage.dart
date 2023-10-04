import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';
import 'package:netflix_clone/utils/names.dart';
import 'package:netflix_clone/view/search_screen/widget/searchcontainer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          color: ColorConstant.darksecondcolor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.search, color: ColorConstant.textcolor),
              Text(
                'Search for a show, movie, genre, e.t.c',
                style: TextStyle(
                    color: ColorConstant.textcolor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.mic, color: ColorConstant.textcolor)
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text(
              'Top Searches',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.textcolor,
                  fontSize: 30),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: ImageConstant.movieavatar.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return SearchContainer(
                  names: Names.topSearch[index],
                  images: ImageConstant.movieavatar[index],
                );
              }),
        ),
      ],
    );
  }
}
