// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class DemoCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // var paint = Paint()
    //   ..strokeWidth = 2.0
    //   ..color = Colors.green
    //   ..style = PaintingStyle.fill;
    // var circlePaint = Paint()
    //   ..strokeWidth = 2.0
    //   ..color = Colors.white
    //   ..style = PaintingStyle.fill;
    // canvas.drawRect(
    //     Rect.fromCircle(
    //         center: Offset(size.width / 2, size.height / 2), radius: 88),
    //     paint);

    // canvas.drawCircle(Offset(size.width / 2, size.height / 2), 88, circlePaint);

    // canvas.drawLine(Offset(0, 200), Offset(50, 0), paint);
    // canvas.drawLine(Offset(50, 0), Offset(250, 0), paint);
    // canvas.drawLine(Offset(250, 0), Offset(250, 200), paint);
    // canvas.drawLine(Offset(250, 200), Offset(0, 200), paint);
    var paint1 = Paint()
      ..color = Color(0xff63aa65)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    //draw arc
    canvas.drawArc(
        Offset(100, 100) & Size(100, 100),
        0, //radians
        2, //radians
        false,
        paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomPainterDemo extends StatelessWidget {
  const CustomPainterDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: CustomPaint(
          painter: DemoCustomPainter(),
          size: Size(300, 300),
        ),),
      ),
    );
  }
}
