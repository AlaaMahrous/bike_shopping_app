import 'package:bike_shopping_app/presentation/widgets/heart_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeart extends StatelessWidget {
  final double size;
  final bool fav;

  const CustomHeart({super.key, this.size = 30, required this.fav});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.h,
      height: size.h,
      child: CustomPaint(
        painter: HeartPainter(
          size,
          colors: fav
              ? const [Color(0xFF4E49F2), Color(0xFF34CAE8)]
              : const [Colors.white, Colors.white],
        ),
      ),
    );
  }
}
