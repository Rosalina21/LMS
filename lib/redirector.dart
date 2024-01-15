import 'package:flutter/material.dart';

class redirector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 800,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 360,
            height: 800,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFF59D15)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 328,
                  height: 57,
                  decoration: BoxDecoration(color: Color(0xFFF2EFEF)),
                ),
                Text(
                  'Redirector',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.03,
                  ),
                ),
                Container(
                  width: 38,
                  height: 29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/38x29"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 297,
                  height: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 251,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xAAEBDDDD),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 10,
                        child: Text(
                          'search here',
                          style: TextStyle(
                            color: Color(0xFF848282),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.05,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 360,
                  height: 575,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(69),
                        topRight: Radius.circular(69),
                        bottomLeft: Radius.circular(6),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 334,
                  height: 359,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 3,
                        top: 269,
                        child: Container(
                          width: 114,
                          height: 90,
                          decoration: BoxDecoration(color: Color(0xFFF59D15)),
                        ),
                      ),
                      Positioned(
                        left: 161,
                        top: 0,
                        child: Container(
                          width: 114,
                          height: 90,
                          decoration: BoxDecoration(color: Color(0xFFF59D15)),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 114,
                          height: 90,
                          decoration: BoxDecoration(color: Color(0xFFF59D15)),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 0,
                        child: SizedBox(
                          width: 104,
                          child: Text(
                            'for director bekele',
                            style: TextStyle(
                              color: Color(0xFF312D2D),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 161,
                        top: 135,
                        child: Container(
                          width: 114,
                          height: 90,
                          decoration: BoxDecoration(color: Color(0xFFF59D15)),
                        ),
                      ),
                      Positioned(
                        left: 174,
                        top: 0,
                        child: SizedBox(
                          width: 160,
                          child: Text(
                            'for human resource manager.',
                            style: TextStyle(
                              color: Color(0xFF312D2D),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 135,
                        child: Container(
                          width: 114,
                          height: 90,
                          decoration: BoxDecoration(color: Color(0xFFF59D15)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}