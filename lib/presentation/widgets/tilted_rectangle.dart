import 'package:bike_shopping_app/presentation/widgets/rectangle_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TiltedRectangle extends StatelessWidget {
  final double size;
  final double cornerRadius;

  const TiltedRectangle({super.key, this.size = 70, this.cornerRadius = 8});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: size.w,
          height: size.h,
          child: CustomPaint(painter: RectanglePainter(size.w)),
        ),
        Positioned(
          top: 0.h,
          bottom: 7.h,
          left: 0.w,
          right: 0.w,
          child: Icon(
            FontAwesomeIcons.bicycle,
            color: Colors.white,
            size: 22.sp,
          ),
        ),
      ],
    );
  }
}
