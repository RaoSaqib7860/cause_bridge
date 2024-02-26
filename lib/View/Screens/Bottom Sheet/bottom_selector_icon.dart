import 'package:flutter/material.dart';

class BottomSelectorIcon extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 17, 175, 175)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*1.0003333,size.height*0.9947500);
    path_0.lineTo(size.width*0.0003667,size.height*0.9942500);
    path_0.quadraticBezierTo(size.width*0.2617000,size.height*0.0010000,size.width*0.5070333,size.height*-0.0047500);
    path_0.quadraticBezierTo(size.width*0.7403000,size.height*0.0179167,size.width*1.0003333,size.height*0.9947500);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

