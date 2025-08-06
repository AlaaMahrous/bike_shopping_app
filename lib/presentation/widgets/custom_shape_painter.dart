import 'package:flutter/material.dart';

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(169.98 * 3.14159 / 180),
      colors: [Color(0xFD353F54), Color(0xFD222834)],
      stops: [0.2798, 0.812],
    );

    final backgroundPaint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.fill;

    final borderGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(134.4 * 3.14159 / 180),
      colors: [
        Color.fromRGBO(0, 0, 0, 0.2),
        Color.fromRGBO(0, 0, 0, 0.2),
        Color.fromRGBO(255, 255, 255, 0.1),
      ],
      stops: [0.0751, 0.5643, 0.6543],
    );

    final borderPaint = Paint()
      ..shader = borderGradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    double cornerRadius = 20.0;
    double rightSideShorten = 30.0;

    path.moveTo(cornerRadius, 0);
    path.lineTo(size.width - cornerRadius, 0);
    path.arcToPoint(
      Offset(size.width, cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(size.width, size.height - rightSideShorten - cornerRadius);
    path.arcToPoint(
      Offset(size.width - cornerRadius, size.height - rightSideShorten),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(cornerRadius, size.height);
    path.arcToPoint(
      Offset(0, size.height - cornerRadius),
      radius: Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(0, cornerRadius);
    path.arcToPoint(
      Offset(cornerRadius, 0),
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
