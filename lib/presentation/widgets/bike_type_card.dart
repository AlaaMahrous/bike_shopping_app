import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BikeTypeCard extends StatelessWidget {
  const BikeTypeCard({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50.h,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.2594, 0.6826],
            colors: [
              Color.fromRGBO(54, 62, 81, 0.7),
              Color.fromRGBO(25, 30, 38, 0.7),
            ],
            transform: GradientRotation(167.4 * 3.1416 / 180),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.h),
          child: Image.asset(image, height: 27.h, width: 27.h),
        ),
      ),
    );
  }
}
