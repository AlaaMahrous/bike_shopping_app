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
          width: 165,
          height: 219,
          child: CustomPaint(painter: CustomShapePainter2()),
        ),
        Positioned(
          top: 35,
          left: 0,
          right: 0,
          child: Image.asset(product.imageUrl, height: 110.h, width: 120.w),
        ),
        Positioned(
          top: 20,
          right: 15,
          child: CustomHeart(fav: product.isFavorite),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 8),
          child: ItemData(product: product),
        ),
      ],
    );
  }
}
