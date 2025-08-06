import 'package:bike_shopping_app/presentation/widgets/bike_type_card.dart';
import 'package:bike_shopping_app/presentation/widgets/icon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypesRow extends StatelessWidget {
  const TypesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: SizedBox(
        height: 90,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 40),
                IconCard(
                  height: 50,
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
                SizedBox(height: 30),
                BikeTypeCard(image: 'assets/images/accumulator.png'),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                BikeTypeCard(image: 'assets/images/motorway.png'),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 10),
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
