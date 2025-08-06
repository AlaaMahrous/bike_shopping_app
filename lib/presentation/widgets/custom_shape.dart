import 'package:bike_shopping_app/presentation/widgets/custom_shape_painter.dart';
import 'package:flutter/material.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 240,
      child: CustomPaint(painter: CustomShapePainter()),
    );
  }
}
