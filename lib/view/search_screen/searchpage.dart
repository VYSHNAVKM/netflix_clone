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
    return ListView(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          color: darksecondcolor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.search, color: textcolor),
              Text(
                'Search for a show, movie, genre, e.t.c',
                style: TextStyle(
                    color: textcolor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.mic, color: textcolor)
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
                  fontWeight: FontWeight.bold, color: textcolor, fontSize: 30),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            primary: true,
            itemCount: movieimages.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SearchContainer(
                names: Names.movienames[index],
                images: movieimages[index],
              );
            }),
      ],
    );
  }
}
