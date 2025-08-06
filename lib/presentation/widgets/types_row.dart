import 'package:bike_shopping_app/presentation/widgets/bike_type_card.dart';
import 'package:bike_shopping_app/presentation/widgets/icon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypesRow extends StatelessWidget {
  const TypesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w),
      child: SizedBox(
        height: 90.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 40.h),
                IconCard(
                  height: 50.h,
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 30.h),
                BikeTypeCard(image: 'assets/images/accumulator.png'),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20.h),
                BikeTypeCard(image: 'assets/images/motorway.png'),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 10.h),
                BikeTypeCard(image: 'assets/images/mountains.png'),
              ],
            ),
            Column(children: [BikeTypeCard(image: 'assets/images/helmet.png')]),
          ],
        ),
      ),
    );
  }
}
