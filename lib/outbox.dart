import 'package:flutter/material.dart';

class outbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 800,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 360,
              height: 800,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Color(0xFFF59D15)),
              child: Stack(
                children: [
                  Positioned(
                    left: 12,
                    top: 21,
                    child: Container(
                      width: 328,
                      height: 57,
                      decoration: BoxDecoration(color: Color(0xFFF2EFEF)),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 35,
                    child: Text(
                      'Outbox',
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
                    left: 31,
                    top: 131,
                    child: Container(
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
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 223,
            child: Container(
              width: 360,
              height: 577,
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
          ),
          Positioned(
            left: 209,
            top: 557,
            child: Container(
              width: 114,
              height: 90,
              child: Stack(
                children: [
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
                    left: 3.45,
                    top: 0,
                    child: SizedBox(
                      width: 103.64,
                      child: Text(
                        'for company best',
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
                ],
              ),
            ),
          ),
          // Add more Positioned widgets for other containers and text as needed.
        ],
      ),
    );
  }
}