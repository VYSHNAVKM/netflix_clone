import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key, required this.names, required this.images});

  final String names;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            color: darksecondcolor,
            child: Row(
              children: [
                Container(
                  height: 90,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(images))),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          names,
                          style: TextStyle(
                              color: textcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                            color: textcolor,
                            size: 30,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
