import 'dart:math' as math;
import 'package:flutter/material.dart';

class HeartPainter extends CustomPainter {
  final double size;
  final List<Color> colors;

  HeartPainter(
    this.size, {
    this.colors = const [Color(0xFF4E49F2), Color(0xFF34CAE8)],
  });

  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(144.6 * math.pi / 180),
      colors: colors,
      stops: const [-0.0037, 1.0555],
    );

    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    final w = size.width;
    final h = size.height;

    // مسار قلب محسّن
    path.moveTo(w * 0.5, h * 0.3);
    path.cubicTo(w * 0.2, h * 0.1, w * 0.1, h * 0.4, w * 0.5, h * 0.9);
    path.cubicTo(w * 0.9, h * 0.4, w * 0.8, h * 0.1, w * 0.5, h * 0.3);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
