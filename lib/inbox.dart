import 'package:flutter/material.dart';


class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
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
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 1,
                      height: 11,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                    Container(
                      width: 334,
                      height: 63,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF2EFEF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Text(
                      'inbox',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.03,
                        letterSpacing: 1.60,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 22,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    ),
                    Container(
                      width: 274,
                      height: 30,
                      decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
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