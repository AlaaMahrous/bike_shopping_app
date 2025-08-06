import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBackGroundDesign extends StatelessWidget {
  const HomeBackGroundDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200.h,
      left: 65.w,
      child: Transform.rotate(
        angle: 720,
        child: Opacity(
          opacity: 1.0,
          child: Container(
            width: 450.w,
            height: 800.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                transform: GradientRotation(170.76 * 3.14159 / 180),
                colors: [Color(0xFF37B6E9), Color(0xFF4B4CED)],
                stops: [0.0644, 0.9929],
              ),
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
      ),
    );
  }
}
