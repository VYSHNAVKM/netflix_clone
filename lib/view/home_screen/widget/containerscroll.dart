import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';

class ContainerScroll extends StatefulWidget {
  const ContainerScroll({super.key});

  @override
  State<ContainerScroll> createState() => _ContainerScrollState();
}

class _ContainerScrollState extends State<ContainerScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10),
              child: Text(
                'Movie',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.textcolor),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 200,
          child: ListView.builder(
              itemCount: ImageConstant.movieavatar.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage(ImageConstant.movieavatar[index]))),
                    height: 150,
                    width: 110,
                  ),
                );
              }),
        )
      ],
    );
  }
}
