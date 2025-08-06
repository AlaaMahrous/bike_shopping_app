import 'package:bike_shopping_app/presentation/widgets/icon_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomedAppBar extends StatelessWidget {
  const CustomedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        IconCard(child: Icon(CupertinoIcons.search, color: Colors.white)),
      ],
    );
  }
}
