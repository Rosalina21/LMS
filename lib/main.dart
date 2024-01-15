import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 360,
          height: 800,
          decoration: BoxDecoration(color: Colors.white),
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
                    SizedBox(
                      width: 229,
                      height: 38,
                      child: Text(
                        'Admin Page',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.03,
                          letterSpacing: 1.60,
                        ),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(3.14),
                      child: Container(
                        width: 359,
                        height: 636,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(66),
                              topRight: Radius.circular(66),
                              bottomLeft: Radius.circular(1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 290,
                      height: 295,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 13,
                            child: Container(
                              width: 91,
                              height: 76,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF59D15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 199,
                            top: 13,
                            child: Container(
                              width: 91,
                              height: 76,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF59D15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 13,
                            top: 182,
                            child: Container(
                              width: 91,
                              height: 76,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF59D15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 199,
                            top: 182,
                            child: Container(
                              width: 91,
                              height: 76,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF59D15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 91,
                            child: SizedBox(
                              width: 67,
                              child: Text(
                                'Inbox',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0.05,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 199,
                            top: 91,
                            child: Text(
                              'Outbox',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.05,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 265,
                            child: Text(
                              'Redirector',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.05,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 213,
                            top: 265,
                            child: Text(
                              'Reply',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0.05,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 23,
                            top: 184,
                            child: Container(
                              width: 67,
                              height: 76,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/67x76"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 211,
                            top: 190,
                            child: Container(
                              width: 63,
                              height: 63,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/63x63"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 93,
                      height: 82,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF59D15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 97,
                      child: Text(
                        'Activity logger',
                        style: TextStyle(
                          color: Colors.black,
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
            ],
          ),
        ),
      ),
    );
  }
}