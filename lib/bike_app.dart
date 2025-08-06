import 'package:bike_shopping_app/presentation/screens/home_screen.dart';
import 'package:bike_shopping_app/presentation/widgets/tilted_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BikeApp extends StatefulWidget {
  const BikeApp({super.key});

  @override
  State<BikeApp> createState() => _BikeAppState();
}

class _BikeAppState extends State<BikeApp> {
  int selectedIndex = 0;

  final List<IconData> icons = [
    FontAwesomeIcons.bicycle,
    FontAwesomeIcons.map,
    FontAwesomeIcons.cartShopping,
    Icons.person,
    FontAwesomeIcons.file,
  ];
  final List<Widget> pages = [
    HomeScreen(),
    Placeholder(color: Colors.green),
    Placeholder(color: Colors.blue),
    Placeholder(color: Colors.orange),
    Placeholder(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IndexedStack(index: selectedIndex, children: pages),
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

        Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(icons.length, (index) {
                bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: isSelected
                      ? TiltedRectangle(
                          size: 70,
                          cornerRadius: 8,
                          child: Icon(
                            icons[index],
                            color: Colors.white,
                            size: 22.sp,
                          ),
                        )
                      : Padding(
                          padding: EdgeInsetsGeometry.only(top: 40.h),
                          child: Icon(
                            icons[index],
                            color: Colors.white,
                            size: 22.sp,
                          ),
                        ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
