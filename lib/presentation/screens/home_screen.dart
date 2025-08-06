import 'package:bike_shopping_app/presentation/widgets/custom_shape.dart';
import 'package:bike_shopping_app/presentation/widgets/customed_app_bar.dart';
import 'package:bike_shopping_app/presentation/widgets/home_back_ground_design.dart';
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
          HomeBackGroundDesign(),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(top: 60.h, right: 20.w, left: 20.w),
              child: Stack(
                children: [
                  CustomedAppBar(),
                  Positioned(top: 60, child: CustomShape()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
