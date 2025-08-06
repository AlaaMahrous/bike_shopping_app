import 'package:flutter/material.dart';

class BikeTypeCard extends StatelessWidget {
  const BikeTypeCard({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
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
          padding: const EdgeInsets.all(10),
          child: Image.asset(image, height: 27, width: 27),
        ),
      ),
    );
  }
}
