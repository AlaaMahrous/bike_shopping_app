import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShapePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(167.4 * 3.14159 / 180),
      colors: [
        Color.fromRGBO(54, 62, 81, 0.6),
        Color.fromRGBO(25, 30, 38, 0.6),
      ],
      stops: [0.2594, 0.6826],
    );

    final backgroundPaint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.fill;

    final borderGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(125.63 * 3.14159 / 180),
      colors: [
        Color.fromRGBO(255, 255, 255, 0.2),
        Color.fromRGBO(0, 0, 0, 0.2),
      ],
      stops: [0.0732, 0.5918],
    );

    final borderPaint = Paint()
      ..shader = borderGradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0.w;

    final path = Path();
    double cornerRadius = 20.0.r;
    double rightSideRaise = 30.0.h;

    path.moveTo(cornerRadius, rightSideRaise);
    path.lineTo(size.width - cornerRadius, 0);
    path.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(size.width, size.height - cornerRadius);
    path.arcToPoint(
      Offset(size.width - cornerRadius, size.height),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(cornerRadius, size.height + rightSideRaise);
    path.arcToPoint(
      Offset(0, size.height + rightSideRaise - cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(0, rightSideRaise + cornerRadius);
    path.arcToPoint(
      Offset(cornerRadius, rightSideRaise),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.close();

    canvas.drawPath(path, backgroundPaint);
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
