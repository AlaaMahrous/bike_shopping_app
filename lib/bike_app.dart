import 'package:bike_shopping_app/presentation/screens/home_screen.dart';
import 'package:bike_shopping_app/presentation/widgets/tilted_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BikeApp extends StatelessWidget {
  const BikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const HomeScreen(),
        Positioned(
          bottom: -20.h,
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: 600,
            child: Container(
              height: 85.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(24, 28, 36, 1),
                    Color.fromRGBO(54, 62, 81, 1),
                  ],
                  stops: [-0.0483, 1.1691],
                ),
              ),
            ),
          ),
        ),
        Positioned(bottom: 20.h, left: 26.w, child: const TiltedRectangle()),
        Positioned(
          bottom: 22.h,
          left: 90.w,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.map, color: Colors.white, size: 22.sp),
                Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.white,
                  size: 22.sp,
                ),
                Icon(Icons.person, color: Colors.white, size: 22.sp),
                Icon(FontAwesomeIcons.file, color: Colors.white, size: 22.sp),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
