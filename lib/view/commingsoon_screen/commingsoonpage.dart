import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';
import 'package:netflix_clone/utils/names.dart';
import 'package:netflix_clone/view/commingsoon_screen/widget/commingsooncontainer.dart';
import 'package:netflix_clone/view/commingsoon_screen/widget/new_arrival_container.dart';

class CommingSoonPage extends StatefulWidget {
  const CommingSoonPage({super.key});

  @override
  State<CommingSoonPage> createState() => _CommingSoonPageState();
}

class _CommingSoonPageState extends State<CommingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ImageConstant.notification,
              SizedBox(
                width: 10,
              ),
              Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.textcolor),
              )
            ],
          ),
        ),
        NewArrivalContainer(),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: Names.topSearch.length,
            itemBuilder: (context, index) => CommingSoonContainer(
              images: ImageConstant.movieavatar[index],
              names: Names.topSearch[index],
            ),
          ),
        ),
      ],
    );
    //   ],
    // );
  }
}