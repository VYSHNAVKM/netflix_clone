import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';

class PreviewScroll extends StatefulWidget {
  const PreviewScroll({super.key});

  @override
  State<PreviewScroll> createState() => _PreviewScrollState();
}

class _PreviewScrollState extends State<PreviewScroll> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Previwes',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: textcolor),
              ),
            ),
          ],
        ),
        Container(
          height: 160,
          child: ListView.builder(
              itemCount: movieimages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(movieimages[index]),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
