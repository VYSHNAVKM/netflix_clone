import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';

class NewArrivalContainer extends StatefulWidget {
  const NewArrivalContainer({super.key});

  @override
  State<NewArrivalContainer> createState() => _NewArrivalContainerState();
}

class _NewArrivalContainerState extends State<NewArrivalContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      color: ColorConstant.darksecondcolor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/moive_avatar_image/images (1).jpg'),
                          fit: BoxFit.cover)),
                  height: 55,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        'New Arrival',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.textcolor),
                      ),
                      Text(
                        'Avatar',
                        style: TextStyle(
                            fontSize: 15, color: ColorConstant.textcolor),
                      ),
                      Text(
                        'Nov 16',
                        style: TextStyle(
                            fontSize: 10, color: ColorConstant.textcolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/moive_avatar_image/images (2).jpg'),
                          fit: BoxFit.cover)),
                  height: 55,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        'New Arrival',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.textcolor),
                      ),
                      Text(
                        'Avatar',
                        style: TextStyle(
                            fontSize: 15, color: ColorConstant.textcolor),
                      ),
                      Text(
                        'Nov 16',
                        style: TextStyle(
                            fontSize: 10, color: ColorConstant.textcolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
