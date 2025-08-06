import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF34C8E8),
            Color.fromARGB(203, 52, 199, 232),
            Color(0xFF4E4AF2),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: child),
    );
  }
}
