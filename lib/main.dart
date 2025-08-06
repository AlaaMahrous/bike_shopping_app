import 'dart:math' as math;

import 'package:bike_shopping_app/presentation/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BikeApp());
  }
}

class BikeApp extends StatelessWidget {
  const BikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HomeScreen(),
        Positioned(
          bottom: -20,
          left: 0,
          right: 0,
          child: Transform.rotate(
            angle: 600,
            child: Container(
              height: 85,
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
        Positioned(bottom: 20, left: 26, child: TiltedRectangle()),
        Positioned(
          bottom: 22,
          left: 90,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.map, color: Colors.white, size: 22),
                Icon(
                  FontAwesomeIcons.cartShopping,
                  color: Colors.white,
                  size: 22,
                ),
                Icon(Icons.person, color: Colors.white, size: 22),
                Icon(FontAwesomeIcons.file, color: Colors.white, size: 22),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TiltedRectangle extends StatelessWidget {
  final double size;
  final double cornerRadius;

  const TiltedRectangle({super.key, this.size = 70, this.cornerRadius = 8});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: size,
          height: size,
          child: CustomPaint(painter: RectanglePainter(size)),
        ),
        Positioned(
          top: 0,
          bottom: 7,
          left: 0,
          right: 0,
          child: Icon(FontAwesomeIcons.bicycle, color: Colors.white, size: 22),
        ),
      ],
    );
  }
}

class RectanglePainter extends CustomPainter {
  final double size;

  RectanglePainter(this.size);

  @override
  void paint(Canvas canvas, Size size) {
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(152.72 * math.pi / 180),
      colors: const [Color(0xFF34C8E8), Color(0xFF4E4AF2)],
      stops: const [0.017, 1.1452],
    );

    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      )
      ..style = PaintingStyle.fill;

    final path = Path();
    final w = size.width;
    final h = size.height;
    final r = 10.0; // نصف قطر الانحناء في الزوايا

    // بدء من الزاوية اليسرى السفلية
    path.moveTo(0, h * 0.8 - r);
    path.quadraticBezierTo(0, h * 0.8, r, h * 0.8);

    path.lineTo(w - r, h * 0.7);
    path.quadraticBezierTo(w, h * 0.7, w, h * 0.7 - r);

    path.lineTo(w, h * 0.1 + r);
    path.quadraticBezierTo(w, h * 0.1, w - r, h * 0.1);

    path.lineTo(r, h * 0.2);
    path.quadraticBezierTo(0, h * 0.2, 0, h * 0.2 + r);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
