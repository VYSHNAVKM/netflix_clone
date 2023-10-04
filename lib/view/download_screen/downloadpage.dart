import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colorconstant.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Smart Downloads',
              style: TextStyle(fontSize: 20, color: ColorConstant.textcolor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Introducing Downloads For You',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: ColorConstant.textcolor),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis.',
              style: TextStyle(color: ColorConstant.textcolor),
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundColor: ColorConstant.darksecondcolor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 50,
              width: 353,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'SETUP',
                  style:
                      TextStyle(fontSize: 20, color: ColorConstant.textcolor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 33,
              width: 300,
              color: ColorConstant.darksecondcolor,
              child: Center(
                child: Text(
                  'Find Something to Download',
                  style:
                      TextStyle(fontSize: 20, color: ColorConstant.textcolor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
