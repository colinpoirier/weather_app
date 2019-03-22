import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundWithRings extends StatelessWidget {
  final Color first = Colors.blue[900].withOpacity(1);
  final Color second = Colors.blueAccent[700].withOpacity(1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Image.asset(
        //   'assets/weather-bk_enlarged.png',
        //   fit: BoxFit.cover,
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       color: Colors.black,
        //       gradient: RadialGradient(
        //           center: Alignment(-1, 0),
        //           radius: 0.5,
        //           colors: [
        //             second,
        //             first,
        //             second,
        //           ],
        //           tileMode: TileMode.repeated)),
        // ),
        // BackdropFilter(
        //   filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        //   child: Container(
        //     color:  Colors.black.withOpacity(0.3),),
        //   ),
        // ),
        // RepaintBoundary(
        //   child: Image.asset('assets/weather-bk.png', 
        //     fit: BoxFit.none,scale: 1.6,
        //     alignment: Alignment.centerLeft,
        //     color: Color.fromRGBO(0, 0, 0, 0.04),
        //     colorBlendMode: BlendMode.hardLight,),
        // ),
        // //Container(color: Colors.black.withOpacity(0.4),),

        // RepaintBoundary(
        //   child: ClipOval(
        //     clipper: CircleClipper(
        //       radius: 140.0,
        //       offset: const Offset(40.0, 0.0),
        //     ),
        //     child: Image.asset(
        //       'assets/weather-bk.png',
        //       fit: BoxFit.cover,
        //       //color: Color.fromRGBO(255, 255, 255, 0.9),
        //       color: Color.fromRGBO(0, 0, 0, 0.05),
        //       colorBlendMode: BlendMode.hardLight,
        //     ),
        //   ),
        // ),
                    Container(
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: RadialGradient(
                 center: Alignment(-1, 0),
                  radius: 0.75,
                  colors: [Colors.blueAccent, Colors.blue[900]],
                  //tileMode: TileMode.repeated
                )
              ),
            ),
        // RepaintBoundary(
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
        //     child: RepaintBoundary(
        //       child: CustomPaint(
        //         painter: WhiteCircleCutoutPainter(
        //             centerOffset: const Offset(40.0, 0.0),
        //             circles: [
        //               Circle(radius: 140.0, alpha: 0x01),
        //               Circle(radius: 140.0 + 15.0, alpha: 0x02),
        //               Circle(radius: 140.0 + 30.0, alpha: 0x04),
        //               Circle(radius: 140.0 + 75.0, alpha: 0x08),
        //             ]),
        //         child: Container(),
        //       ),
        //     ),
        //   ),
        // ),
        // ClipOval(
        //   clipper: CircleClipper(
        //     radius: 140.0,
        //     offset: const Offset(40.0, 0.0),
        //   ),
        //   child: Container(color: Colors.black.withOpacity(0.45),)
        // ),
      ],
    );
  }
}

class CircleClipper extends CustomClipper<Rect> {
  final double radius;
  final Offset offset;

  CircleClipper({
    this.radius,
    this.offset = const Offset(0.0, 0.0),
  });

  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(0.0, size.height / 2) + offset,
      radius: radius,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

class WhiteCircleCutoutPainter extends CustomPainter {
  final Color overlayColor = const Color(0xFFAA88AA);

  final List<Circle> circles;
  final Offset centerOffset;
  final Paint whitePaint;
  final Paint borderPaint;

  WhiteCircleCutoutPainter({
    this.circles = const [],
    this.centerOffset = const Offset(0.0, 0.0),
  })  : whitePaint = Paint(),
        borderPaint = Paint() {
    borderPaint
      ..color = const Color(0x20FFFFFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 1; i < circles.length; ++i) {
      _maskCircle(canvas, size, circles[i - 1].radius);

      whitePaint.color = overlayColor.withAlpha(circles[i - 1].alpha);

      // Fill circle
      canvas.drawCircle(
        Offset(0.0, size.height / 2) + centerOffset,
        circles[i].radius,
        whitePaint,
      );

      // Draw circle bevel
      canvas.drawCircle(
        Offset(0.0, size.height / 2) + centerOffset,
        circles[i - 1].radius,
        borderPaint,
      );
    }

    // Mask the area of the final circle
    _maskCircle(canvas, size, circles.last.radius);

    // Draw an overlay that fills the rest of the screen.
    whitePaint.color = overlayColor.withAlpha(circles.last.alpha);
    canvas.drawRect(
      Rect.fromLTWH(0.0, 0.0, size.width, size.height),
      whitePaint,
    );

    // Draw the bevel for the final circle.
    canvas.drawCircle(
      Offset(0.0, size.height / 2) + centerOffset,
      circles.last.radius,
      borderPaint,
    );
  }

  _maskCircle(Canvas canvas, Size size, double radius) {
    Path clippedCircle = Path();
    clippedCircle.fillType = PathFillType.evenOdd;
    clippedCircle.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    clippedCircle.addOval(
      Rect.fromCircle(
        center: Offset(0.0, size.height / 2) + centerOffset,
        radius: radius,
      ),
    );
    canvas.clipPath(clippedCircle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Circle {
  final double radius;
  final int alpha;

  Circle({
    this.radius,
    this.alpha = 0xFF,
  });
}
