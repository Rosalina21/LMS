import 'package:flutter/material.dart';

class reply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 800,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 19,
            top: 34,
            child: Container(
              width: 322,
              height: 54,
              decoration: BoxDecoration(color: Color(0xFFF2EFEF)),
            ),
          ),
          Positioned(
            left: 35,
            top: 41,
            child: Container(
              width: 51,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/51x40"), // Replace with your actual image URL
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 139,
            child: Container(
              width: 360,
              height: 661,
              decoration: ShapeDecoration(
                color: Color(0xFFF59D15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 96,
            top: 46,
            child: Text(
              'Reply',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0.03,
              ),
            ),
          ),
          Positioned(
            left: 22,
            top: 180,
            child: Container(
              width: 315,
              height: 522,
              decoration: ShapeDecoration(
                color: Color(0xAAEBDDDD),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
          Positioned(
            left: 19,
            top: 718,
            child: Container(
              width: 322,
              height: 59,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}