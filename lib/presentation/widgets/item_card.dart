import 'package:bike_shopping_app/models/product_model.dart';
import 'package:bike_shopping_app/presentation/widgets/custom_heart.dart';
import 'package:bike_shopping_app/presentation/widgets/custom_shape_painter2.dart';
import 'package:bike_shopping_app/presentation/widgets/item_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 165.w,
          height: 219.h,
          child: CustomPaint(painter: CustomShapePainter2()),
        ),
        Positioned(
          top: 35.h,
          left: 0,
          right: 0,
          child: Image.asset(product.imageUrl, height: 110.h, width: 120.w),
        ),
        Positioned(
          top: 20.h,
          right: 15.w,
          child: CustomHeart(fav: product.isFavorite),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.w, bottom: 8.h),
          child: ItemData(product: product),
        ),
      ],
    );
  }
}
