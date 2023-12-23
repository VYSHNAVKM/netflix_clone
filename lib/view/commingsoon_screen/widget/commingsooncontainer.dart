import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';

class CommingSoonContainer extends StatelessWidget {
  const CommingSoonContainer({
    super.key,
    required this.images,
    required this.names,
  });
  final String images;
  final String names;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(images))),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: ColorConstant.textcolor,
                        ),
                        Text(
                          'Remind Me',
                          style: TextStyle(
                              fontSize: 15, color: ColorConstant.textcolor),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: ColorConstant.textcolor,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                              fontSize: 15, color: ColorConstant.textcolor),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Season 1 comming June 16',
                  style: TextStyle(
                      color: ColorConstant.textcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  names,
                  style: TextStyle(
                      fontSize: 30,
                      color: ColorConstant.textcolor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'I was waiting for this day for the longest time. I was a kid back in 2009 when this movie released. So never got to watch it back then. But now when it rereleas',
                    style: TextStyle(
                      color: ColorConstant.textcolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(child: ImageConstant.Commingsoon),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
