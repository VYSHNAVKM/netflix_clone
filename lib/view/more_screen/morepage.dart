import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';
import 'package:netflix_clone/utils/names.dart';
import 'package:netflix_clone/view/more_screen/widget/manage_profiles_container.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 130,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                          height: 100,
                          width: 80,
                          child: Image.asset(profileimages[index])),
                      Text(
                        Names.profilenames[index],
                        style: TextStyle(
                            color: textcolor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: textcolor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Manage Profiles',
              style: TextStyle(fontSize: 20, color: textcolor),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ManageProfileContainer(),
      ],
    );
  }
}
