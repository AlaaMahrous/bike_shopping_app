import 'package:bike_shopping_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242C3B),
      body: Stack(
        children: [
          Positioned(
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
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top: 60.h, right: 20.w, left: 20.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose Your Bike',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                        ),
                      ),
                      IconCard(
                        child: Icon(CupertinoIcons.search, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  CustomShape(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
