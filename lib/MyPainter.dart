import 'package:flutter/material.dart';

import 'constants.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var path = Path();
    var paint = Paint();

    paint.color = kChateauGreen;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 3.0;
    paint.isAntiAlias = true;

    path.moveTo(0, size.height / 8);
    path.quadraticBezierTo(size.width / 2, size.height / -12, size.width, size.height / 8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
