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
            color: ColorConstant.darksecondcolor,
            child: Row(
              children: [
                Container(
                  height: 76,
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
                      Text(
                        names,
                        style: TextStyle(
                            color: ColorConstant.textcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                            color: ColorConstant.textcolor,
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
