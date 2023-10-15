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
      height: 155,
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
                          image: AssetImage('assets/movie_images/movie01.jpg'),
                          fit: BoxFit.cover)),
                  height: 70,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        'New Arrival',
                        style: TextStyle(
                            fontSize: 20, color: ColorConstant.textcolor),
                      ),
                      Text(
                        'Venom',
                        style: TextStyle(
                          fontSize: 20,
                          color: ColorConstant.textcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Nov 31',
                        style: TextStyle(
                            fontSize: 15, color: ColorConstant.textcolor),
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
                          image: AssetImage('assets/movie_images/movie02.jpg'),
                          fit: BoxFit.cover)),
                  height: 70,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    children: [
                      Text(
                        'New Arrival',
                        style: TextStyle(
                            fontSize: 20, color: ColorConstant.textcolor),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontSize: 20,
                          color: ColorConstant.textcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jun 16',
                        style: TextStyle(
                            fontSize: 15, color: ColorConstant.textcolor),
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
