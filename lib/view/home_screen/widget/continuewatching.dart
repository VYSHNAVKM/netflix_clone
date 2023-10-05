import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';

class ContinueWatching extends StatefulWidget {
  const ContinueWatching({super.key});

  @override
  State<ContinueWatching> createState() => _ContinueWatchingState();
}

class _ContinueWatchingState extends State<ContinueWatching> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 103,
                  height: 177,
                  child: Column(
                    children: [
                      Container(
                        width: 103,
                        height: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(ImageConstant.movieavatar[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 5,
                        color: Colors.red,
                        width: 103,
                      ),
                      Container(
                        width: 103,
                        height: 42,
                        color: Colors.black,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.info_outline,
                                color: ColorConstant.textcolor,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: ColorConstant.textcolor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: ImageConstant.movieavatar.length),
    );
  }
}
