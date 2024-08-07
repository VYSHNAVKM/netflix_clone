import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';

class ManageProfileContainer extends StatefulWidget {
  const ManageProfileContainer({super.key});

  @override
  State<ManageProfileContainer> createState() => _ManageProfileContainerState();
}

class _ManageProfileContainerState extends State<ManageProfileContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: darksecondcolor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.message_rounded,
                      color: textcolor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tell friends about Netflix.',
                      style: TextStyle(
                          color: textcolor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 370,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,',
                    style: TextStyle(
                      color: textcolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 370,
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: textcolor,
                      ),
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          color: darksecondcolor,
          height: 80,
          width: double.infinity,
          child: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                Image(
                  image: AssetImage('assets/socialmedia/facebook.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage('assets/socialmedia/Line 2.png')),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage('assets/socialmedia/gmail.png')),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage('assets/socialmedia/Line 2.png')),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage('assets/socialmedia/whatsapp.png')),
                SizedBox(
                  width: 20,
                ),
                Image(image: AssetImage('assets/socialmedia/Line 2.png')),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250, top: 10),
          child: Image(
            image: AssetImage('assets/png/mylistimage.png'),
            width: 100,
          ),
        ),
        Divider(
          thickness: 1,
          color: darksecondcolor,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'App Settings ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Help',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sign Out',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
