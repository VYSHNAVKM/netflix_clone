import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';
import 'package:netflix_clone/utils/imageconstant.dart';
import 'package:netflix_clone/utils/names.dart';
import 'package:netflix_clone/view/home/bottom_navi.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgcolr,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                ImageConstant.logo,
                SizedBox(
                  width: 80,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 24,
                    ))
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 121,
                      width: 100,
                      color: Colors.black,
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHome()),
                                );
                              },
                              child: Image.asset(
                                  ImageConstant.profileimages[index])),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            Names.profilenames[index],
                            style: TextStyle(
                                color: ColorConstant.textcolor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
