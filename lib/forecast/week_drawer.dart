import 'dart:ui';

import 'package:flutter/material.dart';

class WeekDrawer extends StatelessWidget {
  final List<String> days;

  final week = [
    // 'Monday\nAugust 26',
    // 'Tuesday\nAugust 27',
    // 'Wednesday\nAugust 28',
    // 'Thursday\nAugust 29',
    // 'Friday\nAugust 30',
    // 'Saturday\nAugust 31',
    // 'Sunday\nSeptember 1',    
  ];

  final Function(String title, int i) onDaySelected;

  WeekDrawer({
    this.days,
    this.onDaySelected,
  });

  List<Widget> _buildDayButtons() {
    return days.map((String title) {
      title = title.replaceAll(', ', '\n');
      return  Expanded(
        child:  Center(
          child: GestureDetector(
            onTap: () {
              onDaySelected(title, days.indexOf(title.replaceAll('\n',', ')));
            },
            child: Text(
              title,
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return  RepaintBoundary(
      child: ClipRect(
        clipper: RectClipper(),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
          child: Container(
            width: 125.0,
            height: double.infinity,
            color: Colors.blue[900].withOpacity(0.4),//const Color(0xAA234060),
            child:  RepaintBoundary(
              child: Column(
                children: <Widget>[
                   Expanded(
                    child:  Icon(
                      Icons.refresh,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                ]
                ..addAll(_buildDayButtons()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RectClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size){
    return Rect.fromLTWH(0.0, 0.0, size.width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper){
    return true;
  }
}
