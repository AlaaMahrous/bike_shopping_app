import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RectanglePainter extends CustomPainter {
  final double size;

  RectanglePainter(this.size);

  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(152.72 * math.pi / 180),
      colors: const [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
      stops: const [0.017, 1.1452],
    );

    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.fill;

    final path = Path();
    final w = size.width;
    final h = size.height;
    final r = 10.r; // نصف قطر الانحناء بعد تحويله لوحدة ملائمة للشاشة

    path.moveTo(0, h * 0.8 - r);
    path.quadraticBezierTo(0, h * 0.8, r, h * 0.8);

    path.lineTo(w - r, h * 0.7);
    path.quadraticBezierTo(w, h * 0.7, w, h * 0.7 - r);

    path.lineTo(w, h * 0.1 + r);
    path.quadraticBezierTo(w, h * 0.1, w - r, h * 0.1);

    path.lineTo(r, h * 0.2);
    path.quadraticBezierTo(0, h * 0.2, 0, h * 0.2 + r);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
