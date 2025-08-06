import 'package:bike_shopping_app/presentation/widgets/custom_shape_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 350.w,
          height: 240.h,
          child: CustomPaint(painter: CustomShapePainter()),
        ),
        Positioned(
          top: -15.h,
          child: Image.asset(
            'assets/images/bike.png',
            height: 250.h,
            width: 360.w,
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 20.w,
          child: Text(
            '30%Off',
            style: TextStyle(
              color: const Color(0x99FFFFFF),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 26.sp,
            ),
          ),
        ),
      ],
    );
  }
}
