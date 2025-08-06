import 'package:bike_shopping_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemData extends StatelessWidget {
  const ItemData({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          product.name,
          style: TextStyle(
            color: Color(0x99FFFFFF),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
          ),
        ),
        Text(
          product.type,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
          ),
        ),
        Text(
          '\$${product.price}',
          style: TextStyle(
            color: Color(0x99FFFFFF),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}
